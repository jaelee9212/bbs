<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<!-- Favicons -->
<link rel="apple-touch-icon" href="/resources/assets/img/apple-icon.png">
<link rel="icon" href="/resources/assets/img/favicon.png">
<title>Material Dashboard by Creative Tim</title>
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="/resources/assets/css/material-dashboard.css?v=2.0.1">
<link rel="stylesheet"
	href="/resources/assets/css/mycss.css">

<!-- Documentation extras -->
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="/resources/assets/assets-for-demo/demo.css" rel="stylesheet" />
<!-- iframe removal -->
</head>

<body class="off-canvas-sidebar login-page">
	<!-- Navbar -->
	<nav
		class="navbar navbar-expand-lg bg-primary navbar-transparent navbar-absolute"
		color-on-scroll="500">
		<div class="container">
			<div class="navbar-wrapper">
				<a class="navbar-brand" href="#pablo">Welcome!</a>
			</div>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navigation" aria-controls="navigation-index"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="sr-only">Toggle navigation</span> <span
					class="navbar-toggler-icon icon-bar"></span> <span
					class="navbar-toggler-icon icon-bar"></span> <span
					class="navbar-toggler-icon icon-bar"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end" id="navbar">
				<ul class="navbar-nav">
					<li class="nav-item"><a href="/"
						class="nav-link"> <i class="material-icons">dashboard</i>
							Dashboard
					</a></li>
					<li class="nav-item "><a href="/register" class="nav-link">
							<i class="material-icons">person_add</i> Register
					</a></li>
					<li class="nav-item  active "><a href="login.html"
						class="nav-link"> <i class="material-icons">fingerprint</i>
							Login
					</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- End Navbar -->
	<div class="wrapper wrapper-full-page">
		<div class="page-header login-page header-filter" filter-color="black"
			style="background-image: url('/resources/assets/img/register.jpg'); background-size: cover; background-position: top center;">
			<!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
			<div class="container my-container">
				<div class="col-md-9 col-sm-6 ml-auto mr-auto">
					<form class="form" method="post" action="/register">
						<div class="card card-login card-hidden">
							<div class="card-header card-header-rose text-center">
								<h4 class="card-title">Register</h4>
								<div class="social-line">
									<a href="#pablo" class="btn btn-just-icon btn-link btn-white">
										<i class="fa fa-facebook-square"></i>
									</a> <a href="#pablo" class="btn btn-just-icon btn-link btn-white">
										<i class="fa fa-twitter"></i>
									</a> <a href="#pablo" class="btn btn-just-icon btn-link btn-white">
										<i class="fa fa-google-plus"></i>
									</a>
								</div>
							</div>
								<div class="card-body ">
									<p class="card-description text-center">Or Be Classical</p>
									<span class="bmd-form-group">
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"> <i
													class="material-icons">face</i>
												</span>
											</div>
											<input type="text" class="form-control" name="username"
												placeholder="UserName...">
										</div>
									</span>
									<span class="bmd-form-group">
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"><i
													class="material-icons">email</i>
												</span>
											</div>
											<input type="Email" class="form-control" name="email"
												placeholder="Email...">
										</div>
									</span>  
									<span class="bmd-form-group">
										<div class="input-group ">
											<div class="input-group-prepend">
												<span class="input-group-text"> <i
													class="material-icons">lock_outline</i>
												</span>
											</div>
											<input type="password" class="form-control" name="pwd"
												placeholder="Password...">
										</div>
									</span> 
									<span class="bmd-form-group">
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"><i
													class="material-icons">home</i>
												</span>
											</div>
											<input type="text" class="form-control" name="address"
												placeholder="Address...">
										</div>
									</span> 
									<span class="bmd-form-group">
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"><i
													class="material-icons">home</i>
												</span>
											</div>
											<input type="text" class="form-control" name="city"
												placeholder="City...">
											<div class="input-group-prepend">
												<span class="input-group-text"><i
													class="material-icons">home</i>
												</span>
											</div>
											<input type="text" class="form-control" name="country"
												placeholder="Country...">
											<div class="input-group-prepend">
												<span class="input-group-text"><i
													class="material-icons">home</i>
												</span>
											</div>
											<input type="text" class="form-control" name="postalCode"
												placeholder="Postal Code...">
										</div>
									</span> 
									<span class="bmd-form-group">
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"><i
													class="material-icons">person_pin</i>
												</span>
											</div>
											<input type="text" class="form-control" name="aboutMe"
												placeholder="Your brief introduction...">
										</div>
									</span> 
								</div>
								<div class="card-footer justify-content-center">
									<button type="submit" class="btn btn-rose btn-link btn-lg">Register</button>
								</div>
						</div>
					</form>
				</div>
			</div>
			<footer class="footer ">
				<div class="container">
					<nav class="pull-left">
						<ul>
							<li><a href="https://www.creative-tim.com"> Creative Tim
							</a></li>
							<li><a href="http://presentation.creative-tim.com">
									About Us </a></li>
							<li><a href="http://blog.creative-tim.com"> Blog </a></li>
							<li><a href="https://www.creative-tim.com/license">
									Licenses </a></li>
						</ul>
					</nav>
					<div class="copyright pull-right">
						&copy;
						<script>
              document.write(new Date().getFullYear())
            </script>
						, made with <i class="material-icons">favorite</i> by <a
							href="https://www.creative-tim.com" target="_blank">Creative
							Tim</a> for a better web.
					</div>
				</div>
			</footer>
		</div>
	</div>
</body>
<!--   Core JS Files   -->
<script src="/resources/assets/js/core/jquery.min.js"></script>
<script src="/resources/assets/js/core/popper.min.js"></script>
<script src="/resources/assets/js/bootstrap-material-design.js"></script>
<script
	src="/resources/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!--  Google Maps Plugin  -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Plugin for Date Time Picker and Full Calendar Plugin  -->
<script src="/resources/assets/js/plugins/moment.min.js"></script>
<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
<script
	src="/resources/assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
<!--	Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="/resources/assets/js/plugins/nouislider.min.js"></script>
<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script src="/resources/assets/js/plugins/bootstrap-selectpicker.js"></script>
<!--	Plugin for Tags, full documentation here: http://xoxco.com/projects/code/tagsinput/  -->
<script src="/resources/assets/js/plugins/bootstrap-tagsinput.js"></script>
<!--	Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="/resources/assets/js/plugins/jasny-bootstrap.min.js"></script>
<!-- Plugins for presentation and navigation  -->
<script src="/resources/assets/assets-for-demo/js/modernizr.js"></script>
<!-- Material Dashboard Core initialisations of plugins and Bootstrap Material Design Library -->
<script src="/resources/assets/js/material-dashboard.js?v=2.0.1"></script>
<!-- Dashboard scripts -->
<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
<!-- Library for adding dinamically elements -->
<script src="/resources/assets/js/plugins/arrive.min.js"
	type="text/javascript"></script>
<!-- Forms Validations Plugin -->
<script src="/resources/assets/js/plugins/jquery.validate.min.js"></script>
<!--  Charts Plugin, full documentation here: https://gionkunz.github.io/chartist-js/ -->
<script src="/resources/assets/js/plugins/chartist.min.js"></script>
<!--  Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<script src="/resources/assets/js/plugins/jquery.bootstrap-wizard.js"></script>
<!--  Notifications Plugin, full documentation here: http://bootstrap-notify.remabledesigns.com/    -->
<script src="/resources/assets/js/plugins/bootstrap-notify.js"></script>
<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
<script src="/resources/assets/js/plugins/jquery-jvectormap.js"></script>
<!-- Sliders Plugin, full documentation here: https://refreshless.com/nouislider/ -->
<script src="/resources/assets/js/plugins/nouislider.min.js"></script>
<!--  Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script src="/resources/assets/js/plugins/jquery.select-bootstrap.js"></script>
<!--  DataTables.net Plugin, full documentation here: https://datatables.net/    -->
<script src="/resources/assets/js/plugins/jquery.datatables.js"></script>
<!-- Sweet Alert 2 plugin, full documentation here: https://limonte.github.io/sweetalert2/ -->
<script src="/resources/assets/js/plugins/sweetalert2.js"></script>
<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="/resources/assets/js/plugins/jasny-bootstrap.min.js"></script>
<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<script src="/resources/assets/js/plugins/fullcalendar.min.js"></script>
<!-- demo init -->
<script src="/resources/assets/js/plugins/demo.js"></script>
<script type="text/javascript">
  $().ready(function() {
    demo.checkFullPageBackgroundImage();

    setTimeout(function() {
      // after 1000 ms we add the class animated to the login/register card
      $('.card').removeClass('card-hidden');
    }, 700)
  });
</script>

</html>