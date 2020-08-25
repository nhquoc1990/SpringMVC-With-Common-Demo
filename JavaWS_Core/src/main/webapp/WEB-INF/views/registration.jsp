<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


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
								<h4 class="page-title">New Student</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="card">
						<div class="card-body">

							<div class="top-card-button-wrapper">
								<a href="/" type="button"
									class="btn btn-primary btn-sm mb-2">back</a>
							</div>

							<div class="row">
								<div class="col-md-12 col-md-offset-2">
									<div class="panel panel-default">
										<div class="panel-body">

											<form:form method="POST" modelAttribute="student" class="">
												<form:input type="hidden" path="id" id="id" />
												<table>
													<tr>
														<td style="min-width: 150px"><label for="name">Name: </label></td>
														<td><form:input path="name" id="name" class="form-control" /></td>
														<td><form:errors path="name" cssClass="error" /></td>
													</tr>

													<tr>
														<td><label for="enteringDate">Entering Date:
														</label></td>
														<td><form:input class="form-control" path="enteringDate" id="enteringDate" /></td>
														<td><form:errors path="enteringDate" cssClass="error" /></td>
													</tr>

													<tr>
														<td><label for="nationality">Nationality: </label></td>
														<td><form:input class="form-control" path="nationality" id="nationality" /></td>
														<td><form:errors path="nationality" cssClass="error" /></td>
													</tr>

													<tr>
														<td><label for="code">CODE: </label></td>
														<td><form:input class="form-control" path="code" id="code" /></td>
														<td><form:errors path="code" cssClass="error" /></td>
													</tr>

													<tr>
														<td colspan="3"><c:choose>
																<c:when test="${edit}">
																	<div class="form-group">
																		<div class="">
																			<button type="submit" class="btn btn-success btn-sm">
																				Submit Edit</button>
																		</div>
																	</div>
																</c:when>
																<c:otherwise>
																	<div class="form-group">
																		<div class="">
																			<button type="submit" class="btn btn-success btn-sm">
																				Submit</button>
																		</div>
																	</div>
																</c:otherwise>
															</c:choose></td>
													</tr>
												</table>
											</form:form>
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




