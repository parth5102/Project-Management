<%@page import="com.Unnati.bean.UserBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eComApp | New Product Image</title>
<jsp:include page="AllHeader.jsp"></jsp:include>
</head>
<body>

	<jsp:include page="AdminSideBar.jsp"></jsp:include>


	<main id="main" class="main">
	<div class="pagetitle">
		<h1>Profile Image</h1>
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
				<li class="breadcrumb-item">Profile Image</li>
				<li class="breadcrumb-item active">New</li>
			</ol>
		</nav>
	</div>



	<section class="section">
		<div class="row">
			<div class="col-lg-12">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">New Profile Image</h5>

						<%
							List<UserBean> list = (List<UserBean>) request.getAttribute("products");
						%>

						<form action="saveprofilepic" method="post" enctype="multipart/form-data" >
							<input type="hidden" name="userId" value="${param.productId}"/>

							<div class="row mb-3">
								<label for="inputText" class="col-sm-2 col-form-label">Image
								</label>
								<div class="col-sm-6">
									<input type="file" name="imageFile" class="form-control"
									 >
								</div>
							</div>



							<div class="row mb-3">
								<div class="col-2"></div>
								<div class="col-2">
									<button class="btn btn-primary w-100" type="submit">Save
										Image</button>

								</div>
								<div class="col-2">
									<a class="btn btn-danger w-100" href="listproductimage"
										type="button">Cancel</a>

								</div>

							</div>



						</form>



						<!-- Table with stripped rows -->

						<br> <a href="listproductimage"> <i
							class="bi bi-arrow-left"></i> BACK
						</a>

					</div>
				</div>

			</div>
		</div>
	</section>
	</main>

	<jsp:include page="AllJs.jsp"></jsp:include>
	

</body>
</html>