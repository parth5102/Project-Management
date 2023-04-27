<%@page import="com.Unnati.bean.ProjectBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="AllHeader.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="ManagerSideBar.jsp"></jsp:include>

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
				<div class="col-lg-6">

					<div class="card">
						<div class="card-body">
						
						
	<%
	ProjectBean projectBean = (ProjectBean) request.getAttribute("projectBean");
%>

	<b>ProjectId </b>:<%=projectBean.getProjectId() %><br>
	<b>Project Title</b>:<%=projectBean.getTitle() %><br>
	<b>Project Description</b> :<%=projectBean.getDescription() %><br>
	<b>Technology name </b>:<%=projectBean.getTechnologyName()%><br>
	<b>Estimated Hours</b>:<%=projectBean.getEstimatedHours()%><br>
	<b>Start Date</b> :<%=projectBean.getStartDate()%><br>
	<b>Completion Date</b> :<%=projectBean.getComplitionDate() %><br>
	<b>Utilized Hours</b>:<%=projectBean.getUtilizedHours()%><br>
	<b>Status</b>:<%=projectBean.getStatus()%><br>
							

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

<%-- 
<%
	ProjectBean projectBean = (ProjectBean) request.getAttribute("projectBean");
%>

	ProjectId :<%=projectBean.getProjectId() %><br>
	Project Title:<%=projectBean.getTitle() %><br>
	Project Description :<%=projectBean.getDescription() %><br>
	Technology name :<%=projectBean.getTechnologyName()%><br>
	Estimated Hours:<%=projectBean.getEstimatedHours()%><br>
	Start Date :<%=projectBean.getStartDate()%><br>
	Complition Date :<%=projectBean.getComplitionDate() %><br>
	Utilized Hours:<%=projectBean.getUtilizedHours()%><br>
	Status:<%=projectBean.getStatus()%><br> --%>