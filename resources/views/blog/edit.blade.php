@extends('dashboard')

@section('content')
    <main class="login-form">
        <div class="cotainer">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <a href="{{ route('blog.index') }}">Back</a>
                        <h3 class="card-header text-center">Edit Blog</h3>
                        <div class="card-body">
                            <form action="{{ route('blog.update', $blog->id) }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="form-group mb-3">
                                    <input type="text" placeholder="Title" value="{{ $blog->title }}" name="title"
                                        class="form-control" id="title" autofocus required>
                                </div>
                                <div class="form-group mb-3">
                                    <textarea name="description" id="description" class="form-control" id="description" autofocus required>{{ $blog->description }}</textarea>
                                </div>
                                <div class="form-group mb-3">

                                    <input type="file" placeholder="Thumbnail Image"
                                        value="{{ old('thumbnail_image', $blog->thumbnail_image) }}" name="thumbnail_image"
                                        class="form-control" id="thumbnail_image" autofocus required>
                                    @if ($blog->thumbnail_image)
                                        <img style="    width: 4in;" id="blah"
                                            src="{{ url('public/thumbImages/' . $blog->thumbnail_image) }}"
                                            alt="your image" />
                                    @endif
                                </div>
                                <div class="d-grid mx-auto">
                                    <button type="submit" class="btn btn-dark btn-block">Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <script>
        thumbnail_image.onchange = evt => {
            const [file] = thumbnail_image.files
            if (file) {
                blah.src = URL.createObjectURL(file)
            }
        }
    </script>
@endsection
