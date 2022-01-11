<!doctype html>
<html lang="en">
  <head>
  	<title>Login Admin - Cozy.in Room</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="icon" type="image/x-icon" href="{{ asset('assets/bedroom.png') }}" />

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

	<link rel="stylesheet" href="{{ asset('login-admin/css/style.css') }}">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
                    @if (session()->has('loginError'))
                        <div class="alert alert-danger" role="alert">
                            {{ session('loginError') }}
                        </div>
                    @endif
					<div class="wrap d-md-flex">
						<div class="img" style="background-image: url({{ asset('login-admin/images/bg-1.jpg') }});"></div>
						<div class="login-wrap p-4 p-md-5">
                            <div class="d-flex">
                                <div class="w-100">
                                    <h3 class="mb-4">Sign In</h3>
                                </div>
                            </div>
                            <form action="/auth" class="signin-form" method="POST">
                                @csrf
                                <div class="form-group mb-3">
                                    <label class="label" for="name">Username</label>
                                    <input type="text" class="form-control" name="username" placeholder="Username" required>
                                </div>
                                <div class="form-group mb-3">
                                    <label class="label" for="password">Password</label>
                                    <input type="password" class="form-control" name="password" placeholder="Password" required>
                                </div>
                                <div class="form-group">
                                    <button type="button" class="form-control btn btn-primary rounded submit px-3"><a href="/dashboard/concept" class="text-decoration-none text-white">Sign In</a></button>
                                    <a href="/" class="text-center text-warning"><i class="bi bi-arrow-left"></i>&nbsp; Back to Homepage</a>
                                </div>
                            </form>
                        </div>
                    </div>
				</div>
			</div>
		</div>
	</section>

	<script src="{{ asset('login-admin/js/jquery.min.js') }}"></script>
  <script src="{{ asset('login-admin/js/popper.js') }}"></script>
  <script src="{{ asset('login-admin/js/bootstrap.min.js') }}"></script>
  <script src="{{ asset('login-admin/js/main.js') }}"></script>

	</body>
</html>