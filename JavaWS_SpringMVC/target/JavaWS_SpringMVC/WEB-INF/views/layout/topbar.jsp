<!-- Topbar Start -->
<div class="navbar-custom">
	<div class="container-fluid">
		<ul class="list-unstyled topnav-menu float-right mb-0">

			<li class="d-none d-lg-block">
				<form class="app-search" action="/search">
					<div class="app-search-box dropdown">
						<div class="input-group" style="width: 300px;">
							<input type="search" class="form-control" name="queryString"
								value="" placeholder="Search..." id="top-search">
							<div class="input-group-append">
								<button class="btn" type="submit">
									<i class="fe-search"></i>
								</button>
							</div>
						</div>
					</div>
				</form>
			</li>


			<li class="dropdown notification-list topbar-dropdown"><a
				class="nav-link dropdown-toggle nav-user mr-0 waves-effect waves-light"
				data-toggle="dropdown" href="#" role="button" aria-haspopup="false"
				aria-expanded="false"> <span class="pro-user-name ml-1">
						username <i class="mdi mdi-chevron-down"></i>
				</span>
			</a>
				<div class="dropdown-menu dropdown-menu-right profile-dropdown ">
					<!-- item-->
					<a href=""
						onclick="event.preventDefault();document.getElementById('logout-form').submit();"
						class="dropdown-item notify-item"> <i class="fe-user"></i>
						<form id="logout-form" action="/logout" method="POST"
							style="display: none;"></form> <span>Logout </span>
					</a>
				</div></li>

			<li class="dropdown notification-list"><a
				href="javascript:void(0);"
				class="nav-link right-bar-toggle waves-effect waves-light"> <i
					class="fe-settings noti-icon"></i>
			</a></li>

		</ul>

		<!-- LOGO -->
		<div class="logo-box">
			<a href="index.html" class="logo logo-dark text-center"> <span
				class="logo-sm"> <img
					src="${contextPath}resources/UBold/images/logo-sm.png" alt=""
					height="22"> <!-- <span class="logo-lg-text-light">UBold</span> -->
			</span> <span class="logo-lg"> <img
					src="${contextPath}resources/UBold/images/logo-dark.png" alt=""
					height="20"> <!-- <span class="logo-lg-text-light">U</span> -->
			</span>
			</a> <a href="{{ route('home" class="logo logo-light text-center"> <span
				class="logo-sm"> <img
					src="${contextPath}resources/UBold/images/logo-sm.png" alt=""
					height="22">
			</span> <span class="logo-lg">
					<h3 style="color: white; margin-top: 20px">JavaWS</h3>
			</span>
			</a>
		</div>

		<ul class="list-unstyled topnav-menu topnav-menu-left m-0">
			<li>
				<button class="button-menu-mobile waves-effect waves-light">
					<i class="fe-menu"></i>
				</button>
			</li>

			<li>
				<!-- Mobile menu toggle (Horizontal Layout)--> <a
				class="navbar-toggle nav-link" data-toggle="collapse"
				data-target="#topnav-menu-content">
					<div class="lines">
						<span></span> <span></span> <span></span>
					</div>
			</a> <!-- End mobile menu toggle-->
			</li>


		</ul>
		<div class="clearfix"></div>
	</div>
</div>
<!-- end Topbar -->