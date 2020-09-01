<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="layout/head.jsp"></jsp:include>
<body>

	<!-- Begin page -->
	<div id="wrapper">

		<jsp:include page="layout/topbar.jsp"></jsp:include>

		<jsp:include page="layout/leftside.jsp"></jsp:include>

		<!-- ============================================================== -->
		<!-- Start Page Content here -->
		<!-- ============================================================== -->

		<div class="content-page">
			<div class="content">

				<!-- Start Content-->
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Apps</a></li>
										<li class="breadcrumb-item active">title</li>
									</ol>
								</div>
								<h4 class="page-title">title</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="card">
						<div class="card-body">
							<div class="top-card-button-wrapper">
								<a href="http://www.pannguyen.com/menu-management/add"
									type="button" class="btn btn-success btn-sm mb-2">Add New</a>
							</div>
							<table class="table datatable-button-html5-basic">
								<thead>
									<tr class="bg-primary border border-secondary text-white">
										<th scope="col" style="width: 10px">No</th>
										<th scope="col" style="width: 250px">Menu name</th>
										<th scope="col" style="width: 150px"></th>
									</tr>
								</thead>
								<tbody class="table-bordered">
									<tr>
										<td class="align-middle text-center " style="width: 10px">
											0</td>

										<td class="align-middle text-center " style="width: 250px">
											Confluence</td>

										<td class="align-middle text-center " style="width: 150px">
											<a href="http://www.pannguyen.com/menu-management/edit?id=17"
											class="btn btn-sm btn-primary">Edit</a>
											<form method="POST"
												action="http://www.pannguyen.com/menu-management/delete"
												style="display: inline-block">
												<input type="hidden" name="_token"
													value="28tvqzx4JQGuwU1s1wO4YNUGiCAMXP9XIeD1cuCQ"> <input
													type="hidden" name="id" value="17">
												<button type="submit" class="btn btn-danger btn-sm">Delete</button>
											</form>
										</td>
									</tr>
									<tr>
										<td class="align-middle text-center " style="width: 10px">
											1</td>

										<td class="align-middle text-center " style="width: 250px">
											Database</td>

										<td class="align-middle text-center " style="width: 150px">
											<a href="http://www.pannguyen.com/menu-management/edit?id=16"
											class="btn btn-sm btn-primary">Edit</a>
											<form method="POST"
												action="http://www.pannguyen.com/menu-management/delete"
												style="display: inline-block">
												<input type="hidden" name="_token"
													value="28tvqzx4JQGuwU1s1wO4YNUGiCAMXP9XIeD1cuCQ"> <input
													type="hidden" name="id" value="16">
												<button type="submit" class="btn btn-danger btn-sm">Delete</button>
											</form>
										</td>
									</tr>
									<tr>
										<td class="align-middle text-center " style="width: 10px">
											2</td>

										<td class="align-middle text-center " style="width: 250px">
											Spring Boot</td>

										<td class="align-middle text-center " style="width: 150px">
											<a href="http://www.pannguyen.com/menu-management/edit?id=15"
											class="btn btn-sm btn-primary">Edit</a>
											<form method="POST"
												action="http://www.pannguyen.com/menu-management/delete"
												style="display: inline-block">
												<input type="hidden" name="_token"
													value="28tvqzx4JQGuwU1s1wO4YNUGiCAMXP9XIeD1cuCQ"> <input
													type="hidden" name="id" value="15">
												<button type="submit" class="btn btn-danger btn-sm">Delete</button>
											</form>
										</td>
									</tr>
									<tr>
										<td class="align-middle text-center " style="width: 10px">
											3</td>

										<td class="align-middle text-center " style="width: 250px">
											Others ORM</td>

										<td class="align-middle text-center " style="width: 150px">
											<a href="http://www.pannguyen.com/menu-management/edit?id=8"
											class="btn btn-sm btn-primary">Edit</a>
											<form method="POST"
												action="http://www.pannguyen.com/menu-management/delete"
												style="display: inline-block">
												<input type="hidden" name="_token"
													value="28tvqzx4JQGuwU1s1wO4YNUGiCAMXP9XIeD1cuCQ"> <input
													type="hidden" name="id" value="8">
												<button type="submit" class="btn btn-danger btn-sm">Delete</button>
											</form>
										</td>
									</tr>
									<tr>
										<td class="align-middle text-center " style="width: 10px">
											4</td>

										<td class="align-middle text-center " style="width: 250px">
											Hibernate</td>

										<td class="align-middle text-center " style="width: 150px">
											<a href="http://www.pannguyen.com/menu-management/edit?id=7"
											class="btn btn-sm btn-primary">Edit</a>
											<form method="POST"
												action="http://www.pannguyen.com/menu-management/delete"
												style="display: inline-block">
												<input type="hidden" name="_token"
													value="28tvqzx4JQGuwU1s1wO4YNUGiCAMXP9XIeD1cuCQ"> <input
													type="hidden" name="id" value="7">
												<button type="submit" class="btn btn-danger btn-sm">Delete</button>
											</form>
										</td>
									</tr>
									<tr>
										<td class="align-middle text-center " style="width: 10px">
											5</td>

										<td class="align-middle text-center " style="width: 250px">
											Java Versions</td>

										<td class="align-middle text-center " style="width: 150px">
											<a href="http://www.pannguyen.com/menu-management/edit?id=6"
											class="btn btn-sm btn-primary">Edit</a>
											<form method="POST"
												action="http://www.pannguyen.com/menu-management/delete"
												style="display: inline-block">
												<input type="hidden" name="_token"
													value="28tvqzx4JQGuwU1s1wO4YNUGiCAMXP9XIeD1cuCQ"> <input
													type="hidden" name="id" value="6">
												<button type="submit" class="btn btn-danger btn-sm">Delete</button>
											</form>
										</td>
									</tr>
									<tr>
										<td class="align-middle text-center " style="width: 10px">
											6</td>

										<td class="align-middle text-center " style="width: 250px">
											Projects</td>

										<td class="align-middle text-center " style="width: 150px">
											<a href="http://www.pannguyen.com/menu-management/edit?id=5"
											class="btn btn-sm btn-primary">Edit</a>
											<form method="POST"
												action="http://www.pannguyen.com/menu-management/delete"
												style="display: inline-block">
												<input type="hidden" name="_token"
													value="28tvqzx4JQGuwU1s1wO4YNUGiCAMXP9XIeD1cuCQ"> <input
													type="hidden" name="id" value="5">
												<button type="submit" class="btn btn-danger btn-sm">Delete</button>
											</form>
										</td>
									</tr>
									<tr>
										<td class="align-middle text-center " style="width: 10px">
											7</td>

										<td class="align-middle text-center " style="width: 250px">
											Spring MVC</td>

										<td class="align-middle text-center " style="width: 150px">
											<a href="http://www.pannguyen.com/menu-management/edit?id=4"
											class="btn btn-sm btn-primary">Edit</a>
											<form method="POST"
												action="http://www.pannguyen.com/menu-management/delete"
												style="display: inline-block">
												<input type="hidden" name="_token"
													value="28tvqzx4JQGuwU1s1wO4YNUGiCAMXP9XIeD1cuCQ"> <input
													type="hidden" name="id" value="4">
												<button type="submit" class="btn btn-danger btn-sm">Delete</button>
											</form>
										</td>
									</tr>
									<tr>
										<td class="align-middle text-center " style="width: 10px">
											8</td>

										<td class="align-middle text-center " style="width: 250px">
											Struts</td>

										<td class="align-middle text-center " style="width: 150px">
											<a href="http://www.pannguyen.com/menu-management/edit?id=1"
											class="btn btn-sm btn-primary">Edit</a>
											<form method="POST"
												action="http://www.pannguyen.com/menu-management/delete"
												style="display: inline-block">
												<input type="hidden" name="_token"
													value="28tvqzx4JQGuwU1s1wO4YNUGiCAMXP9XIeD1cuCQ"> <input
													type="hidden" name="id" value="1">
												<button type="submit" class="btn btn-danger btn-sm">Delete</button>
											</form>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>


					<div class="card">
						<div class="card-body">

							<div class="top-card-button-wrapper">
								<a href="http://www.pannguyen.com/post-management" type="button"
									class="btn btn-primary btn-sm mb-2">back</a>
							</div>

							<div class="row">
								<div class="col-md-12 col-md-offset-2">
									<div class="panel panel-default">
										<div class="panel-body">
											<form class="form-horizontal" method="POST"
												action="http://www.pannguyen.com/post-management/add"
												enctype="multipart/form-data">
												<input type="hidden" name="_token"
													value="28tvqzx4JQGuwU1s1wO4YNUGiCAMXP9XIeD1cuCQ">


												<div class="form-group">
													<label for="name" class="col-md-4 control-label">Post
														Name</label>

													<div class="col-md-12">
														<input id="id" type="hidden" class="form-control"
															name="id" value="" required="" autofocus=""> <input
															id="name" type="text" class="form-control" name="name"
															value="" required="" autofocus="">

													</div>
												</div>

												<div class="form-group">
													<label for="description" class="col-md-4 control-label">Description</label>

													<div class="col-md-12">
														<textarea id="description" class="form-control"
															name="description" style="height: 50px" required=""> </textarea>

													</div>
												</div>


												<div class="form-group">
													<label for="menu_id" class="col-md-4 control-label">Menu
														Name</label>

													<div class="col-md-3">
														<select id="menu_id" class="form-control">
															<option value="17">Confluence</option>
															<option value="16">Database</option>
															<option value="15">Spring Boot</option>
															<option value="8">Others ORM</option>
															<option value="7">Hibernate</option>
															<option value="6">Java Versions</option>
															<option value="5">Projects</option>
															<option value="4">Spring MVC</option>
															<option value="1">Struts</option>
														</select>
													</div>
												</div>

												<div class="form-group">
													<label for="menu_id" class="col-md-4 control-label">Catagory
														Name</label>

													<div class="col-md-3">
														<select name="catagory_id" id="catagory_id"
															class="form-control" required=""><option
																value="22">ORM</option></select>
													</div>
												</div>


												<div class="form-group">
													<div class="col-md-6 col-md-offset-4">
														<button type="submit" class="btn btn-primary btn-sm">
															Add</button>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- container -->

			</div>
			<!-- content -->

			<!-- Footer Start -->
			<footer class="footer" id="lastfooter">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<script>document.write(new Date().getFullYear())</script>
							&copy; Quoc Nguyen</a>
						</div>
						<div class="col-md-6">
							<div class="text-md-right footer-links d-none d-sm-block">
								<a href="javascript:void(0);">About Us </a> <a
									href="javascript:void(0);">Help </a> <a
									href="javascript:void(0);">Contact Us </a>
							</div>
						</div>
					</div>
				</div>
			</footer>
			<!-- end Footer -->

		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->


	</div>
	<!-- END wrapper -->

	<jsp:include page="layout/rightside.jsp"></jsp:include>
	<!-- Right bar overlay-->
	<div class="rightbar-overlay"></div>

</body>
<style>
.dataTables_length>label {
	display: flex;
}

.select2-selection__rendered {
	line-height: 24px !important;
}

.dataTables_length label select2-selection--single {
	width: 45px;
}

.page-title {
	line-height: 75px !important;
}
</style>

</html>