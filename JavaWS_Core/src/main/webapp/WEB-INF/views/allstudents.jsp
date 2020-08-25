<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
								<h4 class="page-title">Student List</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="card">
						<div class="card-body">
							<div class="top-card-button-wrapper">
								<a href="<c:url value = '/new'/> "
									type="button" class="btn btn-success btn-sm mb-2">Add New</a>
							</div>
							<table class="table datatable-button-html5-basic">
								<thead>
									<tr class="bg-primary border border-secondary text-white">
										<th scope="col" style="width: 10px">STT</th>
										<th scope="col" style="width: 150px">Name</th>
										<th scope="col" style="width: 150px">Entering Date</th>
										<th scope="col" style="width: 150px">Nationality</th>
										<th scope="col" style="width: 150px">Code</th>
										<th scope="col" style="width: 150px"></th>
									</tr>
								</thead>
								<tbody class="table-bordered">
									<c:forEach items="${students}" var="student" varStatus="loop">
										<tr>
										<td>${loop.index}</td>
										<td>${student.name}</td>
										<td>${student.enteringDate}</td>
										<td>${student.nationality}</td>
										<td>${student.code}</td>
										<td class="align-middle text-center " style="width: 150px">
											<a href="/edit-${student.code}-student"
											class="btn btn-sm btn-primary">Edit</a>
											<form method="POST"
												action="/delete-${student.code}-student"
												style="display: inline-block">
												<button type="submit" class="btn btn-danger btn-sm">Delete</button>
											</form>
										</td>
										
										</tr>
									</c:forEach>
								</tbody>
							</table>
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




