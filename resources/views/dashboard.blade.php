<!DOCTYPE html>
<html>

<head>
    <title>Blog</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    @auth
        <style>
            #example_wrapper {
                padding: 30px;
            }

            .username {
                color: black;
                font-weight: 700;
            }

            .logout {
                color: red;
                cursor: pointer;
            }

            .bg-light {
                background-color: #53697e !important;
                margin-bottom: 9px;
            }

            .collapse:not(.show) {
                background: #53697e !important;
            }
        </style>
        <nav class="navbar navbar-expand-lg  bg-light">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
                    <span class="navbar-text">
                        <div class="d-flex">
                            <div>
                                <span class="fs-5 mx-4 my-2 username">{{ ucwords(Auth::User()->name) }}</span>
                            </div>
                            <div>
                                <form action="{{ route('signout') }}" method="post">
                                    @csrf
                                    <button class="fs-5 btn btn-sm btn-primary mx-3 logout">Logout</button>
                                </form>
                            </div>
                        </div>
                    </span>
                </div>
            </div>
        </nav>
    @endauth
    @yield('content')
</body>

</html>
