@include('header')

<div class="page">
    <div class="">
        <!-- Theme-Layout -->
        <div class="container-login100">
            <div class="wrap-login100 p-6">
                <form class="login100-form validate-form" action="{{ route('login.custom') }}" method="post"
                    autocomplete="off">
                    @csrf
                    <span class="login100-form-title pb-5">
                        Login
                    </span>
                    <div class="panel panel-primary">

                        @if (Session::has('success'))
                            <div class="alert alert-success">{{ Session::get('success') }}</div>
                        @endif
                        @if (Session::has('fail'))
                            <div class="alert alert-danger">{{ Session::get('fail') }}</div>
                        @endif
                        <div class="panel-body tabs-menu-body p-0 pt-5">
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab5">
                                    <div class="wrap-input100 validate-input input-group"
                                        data-bs-validate="Valid email is required: ex@abc.xyz">
                                        <a href="javascript:void(0)" class="input-group-text bg-white text-muted">
                                            <i class="zmdi zmdi-email text-muted" aria-hidden="true"></i>
                                        </a>
                                        <input class="input100 border-start-0 form-control ms-0" name="mobile"
                                            type="mobile" placeholder="mobile">
                                        @if ($errors->has('mobile'))
                                            <span class="text-danger">{{ $errors->first('mobile') }}</span>
                                        @endif
                                    </div>
                                    <div class="wrap-input100 validate-input input-group" id="Password-toggle">
                                        <a href="javascript:void(0)" class="input-group-text bg-white text-muted">
                                            <i class="zmdi zmdi-eye text-muted" aria-hidden="true"></i>
                                        </a>
                                        <input class="input100 border-start-0 form-control ms-0" name="password"
                                            type="password" placeholder="Password">
                                        @if ($errors->has('password'))
                                            <span class="text-danger">{{ $errors->first('password') }}</span>
                                        @endif
                                    </div>
                                    <div class="container-login100-form-btn">
                                        <button class="login100-form-btn btn-primary">Login</button>
                                    </div>
                                    <div class="text-center pt-3">
                                        <p class="text-dark mb-0">Not a member?<a href="registration"
                                                class="text-primary ms-1">Sign UP</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- CONTAINER CLOSED -->
    </div>
</div>
@include('footer')
