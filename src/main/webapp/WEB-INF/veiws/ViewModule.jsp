<%@page import="com.Unnati.bean.ModuleBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="AllHeader.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="AdminSideBar.jsp"></jsp:include>

<main id="main" class="main">

		<div class="pagetitle">
			<h1>Data Tables</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">Tables</li>
					<li class="breadcrumb-item active">Data</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-10">

					<div class="card">
						<div class="card-body">
						
						
	<%
	ModuleBean moduleBean = (ModuleBean) request.getAttribute("moduleBean");
%>

	<b>module Id </b>:<%=moduleBean.getModuleId() %><br>
	<b>Doc Image</b>: <img height="500px" width="700px" src="${moduleBean.docURL}">
	<br>

								</div>
							
							</div>
							<!-- End Table with stripped rows -->

						</div>
					</div>

				
		</section>

	</main>
	<!-- End #main -->




	<jsp:include page="AllJs.jsp"></jsp:include>

</body>
</html>