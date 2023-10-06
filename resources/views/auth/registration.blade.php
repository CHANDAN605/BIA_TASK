@include('header')
<div class="page">
    <div class="">
        <!-- Theme-Layout -->

        <!-- CONTAINER OPEN -->
        <div class="col col-login mx-auto mt-7">
            <div class="text-center">
                <a href="index.html"><img src="../assets/images/brand/logo-white.png" class="header-brand-img m-0"
                        alt=""></a>
            </div>
        </div>
        <div class="container-login100">
            <div class="wrap-login100 p-6">
                <form class="login100-form validate-form" action="{{ route('register.custom') }}" method="post"
                    autocomplete="off">
                    @csrf
                    <span class="login100-form-title">
                        Registration
                    </span>
                    @if (Session::has('success'))
                        <div class="alert alert-success">{{ Session::get('success') }}</div>
                    @endif

                    <div class="wrap-input100 validate-input input-group"
                        data-bs-validate="Valid email is required: ex@abc.xyz">
                        <a href="javascript:void(0)" class="input-group-text bg-white text-muted">
                            <i class="mdi mdi-account" aria-hidden="true"></i>
                        </a>
                        <input class="input100 border-start-0 ms-0 form-control" value="{{ old('name') }}"
                            name="name" type="text" placeholder="User name">
                        @if ($errors->has('name'))
                            <span class="text-danger">{{ $errors->first('name') }}</span>
                        @endif
                    </div>
                    <div class="wrap-input100 validate-input input-group"
                        data-bs-validate="Valid email is required: ex@abc.xyz">
                        <a href="javascript:void(0)" class="input-group-text bg-white text-muted">
                            <i class="zmdi zmdi-email" aria-hidden="true"></i>
                        </a>
                        <input class="input100 border-start-0 ms-0 form-control" value="{{ old('email') }}"
                            name="email" type="email" placeholder="Email">
                        @if ($errors->has('email'))
                            <span class="text-danger">{{ $errors->first('email') }}</span>
                        @endif
                    </div>
                    <div class="wrap-input100 validate-input input-group">
                        <a href="javascript:void(0)" class="input-group-text bg-white text-muted">
                            <i class="zmdi zmdi-email" aria-hidden="true"></i>
                        </a>
                        <input class="input100 border-start-0 ms-0 form-control" value="{{ old('mobile') }}"
                            name="mobile" type="mobile" placeholder="mobile">
                        @if ($errors->has('mobile'))
                            <span class="text-danger">{{ $errors->first('mobile') }}</span>
                        @endif
                    </div>
                    <div class="wrap-input100 validate-input input-group" id="Password-toggle">
                        <a href="javascript:void(0)" class="input-group-text bg-white text-muted">
                            <i class="zmdi zmdi-eye" aria-hidden="true"></i>
                        </a>
                        <input class="input100 border-start-0 ms-0 form-control" value="{{ old('password') }}"
                            name="password" type="password" placeholder="Password">
                        @if ($errors->has('password'))
                            <span class="text-danger">{{ $errors->first('password') }}</span>
                        @endif
                    </div>
                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn btn-primary">Register</button>
                    </div>
                    <div class="text-center pt-3">
                        <p class="text-dark mb-0 d-inline-flex">Already have account ?<a href="login"
                                class="text-primary ms-1">Sign In</a></p>
                    </div>
                </form>
            </div>
        </div>
        <!-- CONTAINER CLOSED -->
    </div>
</div>
@include('footer')
