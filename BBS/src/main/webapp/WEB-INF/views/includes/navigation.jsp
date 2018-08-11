<body class="">
	<div class="wrapper">
		<div class="sidebar" data-color="rose" data-background-color="black"
			data-image="/resources/assets/img/greenB.jpg">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
			<div class="logo">
				<a href="http://www.creative-tim.com" class="simple-text logo-mini">
					CT </a> <a href="http://www.creative-tim.com"
					class="simple-text logo-normal"> Enjoy your time </a>
			</div>
			<div class="sidebar-wrapper">
				<div class="user">
					<div class="photo">
						<img src="/resources/assets/img/profile.jpg" />
					</div>
					<div class="user-info">
						<a data-toggle="collapse" href="#collapseExample" class="username">
							<span> UserName <b class="caret"></b>
						</span>
						</a>
						<div class="collapse" id="collapseExample">
							<ul class="nav">
								<li class="nav-item"><a class="nav-link" href="/updateProfile"> <span
										class="sidebar-mini"> MP </span><span class="sidebar-normal">
											My Profile </span>
								</a></li>
								<li class="nav-item"><a class="nav-link" href="/logout"> <span
										class="sidebar-mini"> LO </span> <span class="sidebar-normal">
											LogOut </span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
				<ul class="nav">
					<li class="nav-item active "><a class="nav-link"
						href="/"> <i class="material-icons">dashboard</i>
							<p>Dashboard</p>
					</a></li>
					<li class="nav-item "><a class="nav-link"
						data-toggle="collapse" href="#pagesExamples"> <i
							class="material-icons">image</i>
							<p>
								Pages <b class="caret"></b>
							</p>
					</a>
						<div class="collapse" id="pagesExamples">
							<ul class="nav">
								<li class="nav-item "><a class="nav-link"
									href="./pages/pricing.html"> <span class="sidebar-mini">
											P </span> <span class="sidebar-normal"> Pricing </span>
								</a></li>
								<li class="nav-item "><a class="nav-link"
									href="./pages/rtl.html"> <span class="sidebar-mini">
											RS </span> <span class="sidebar-normal"> RTL Support </span>
								</a></li>
								<li class="nav-item "><a class="nav-link"
									href="./pages/timeline.html"> <span class="sidebar-mini">
											T </span> <span class="sidebar-normal"> Timeline </span>
								</a></li>
								<li class="nav-item "><a class="nav-link"
									href="./pages/login.html"> <span class="sidebar-mini">
											LP </span> <span class="sidebar-normal"> Login Page </span>
								</a></li>
								<li class="nav-item "><a class="nav-link"
									href="./pages/register.html"> <span class="sidebar-mini">
											RP </span> <span class="sidebar-normal"> Register Page </span>
								</a></li>
								<li class="nav-item "><a class="nav-link"
									href="./pages/lock.html"> <span class="sidebar-mini">
											LSP </span> <span class="sidebar-normal"> Lock Screen Page </span>
								</a></li>
								<li class="nav-item "><a class="nav-link"
									href="./pages/user.html"> <span class="sidebar-mini">
											UP </span> <span class="sidebar-normal"> User Profile </span>
								</a></li>
							</ul>
						</div></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent  navbar-absolute fixed-top">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<div class="navbar-minimize">
							<button id="minimizeSidebar"
								class="btn btn-just-icon btn-white btn-fab btn-round">
								<i
									class="material-icons text_align-center visible-on-sidebar-regular">more_vert</i>
								<i
									class="material-icons design_bullet-list-67 visible-on-sidebar-mini">view_list</i>
							</button>
						</div>
						<a class="navbar-brand" href="#pablo">Dashboard</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navigation" aria-controls="navigation-index"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="sr-only">Toggle navigation</span> <span
							class="navbar-toggler-icon icon-bar"></span> <span
							class="navbar-toggler-icon icon-bar"></span> <span
							class="navbar-toggler-icon icon-bar"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end">
						<form class="navbar-form">
							<div class="input-group no-border">
								<input type="text" value="" class="form-control"
									placeholder="Search...">
								<button type="submit"
									class="btn btn-white btn-round btn-just-icon">
									<i class="material-icons">search</i>
									<div class="ripple-container"></div>
								</button>
							</div>
						</form>
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="#pablo">
									<i class="material-icons">dashboard</i>
									<p>
										<span class="d-lg-none d-md-block">Stats</span>
									</p>
							</a></li>
							<li class="nav-item dropdown"><a class="nav-link"
								href="#pablo" id="navbarDropdownMenuLink" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <i
									class="material-icons">notifications</i> <span
									class="notification">5</span>
									<p>
										<span class="d-lg-none d-md-block">Some Actions <b
											class="caret"></b>
										</span>

									</p>
							</a>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item" href="#pablo">Mike John responded
										to your email</a> <a class="dropdown-item" href="#pablo">You
										have 5 new tasks</a> <a class="dropdown-item" href="#pablo">You're
										now friend with Andrew</a> <a class="dropdown-item" href="#pablo">Another
										Notification</a> <a class="dropdown-item" href="#pablo">Another
										One</a>
								</div></li>
							<li class="nav-item"><a class="nav-link" href="#pablo">
									<i class="material-icons">person</i>
									<p>
										<span class="d-lg-none d-md-block">Account</span>
									</p>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>