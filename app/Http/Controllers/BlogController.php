<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Blog;

class BlogController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $blogs = Blog::orderBy('created_at', 'desc')->get();
        return view('blog.index', compact('blogs'));
    }

    public function create()
    {
        return view('blog.create');
    }

    public function store(Request $request)
    {
        // Validate the input
        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'description' => 'required',
            'thumbnail_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        // To get the authenticated user
        $user = Auth::user();
        $image_name = '';
        if ($request->hasFile('thumbnail_image')) {
            $file = $request->file('thumbnail_image');
            $image_name = rand() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('thumbImages'), $image_name);
        }

        $validatedData['thumbnail_image'] = $image_name;

        if (Auth::check()) {
            $validatedData['author_name'] = $user->name;
        }
        // Create a new blog post
        Blog::create($validatedData);

        return redirect()->route('blog.index')->with('success', 'Blog post created successfully');
    }

    public function edit(Blog $blog)
    {
        return view('blog.edit', compact('blog'));
    }
    public function update(Request $request, Blog $blog)
    {
        // Validate the input
        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'description' => 'required',
            'thumbnail_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        $user = Auth::user();
        $image_name = '';
        if ($request->hasFile('thumbnail_image')) {
            $file = $request->file('thumbnail_image');
            $image_name = rand() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('thumbImages'), $image_name);
        }

        $validatedData['thumbnail_image'] = $image_name;

        if (Auth::check()) {
            $validatedData['author_name'] = $user->name;
        }

        // Update the blog post
        $blog->update($validatedData);

        return redirect()->route('blog.index')->with('success', 'Blog post updated successfully');
    }

    public function destroy(Blog $blog)
    {
        $blog->delete();
        return redirect()->route('blog.index')->with('success', 'Blog post deleted successfully');
    }
}
