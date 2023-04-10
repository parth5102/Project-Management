<%@page import="com.Unnati.bean.UserBean"%>
<%@page import="com.Unnati.bean.ProjectBean"%>
<%@page import="com.Unnati.bean.Project_UserBean"%>
<%@page import="java.util.List"%>
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
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item">Tables</li>
					<li class="breadcrumb-item active">Data</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<h5 class="card-title">DatatTables</h5>
							

									
									<table id="project_UserTable" class="datatable" border="1">
										<thead>
											<tr>
												<th >Project User Name</th>
												<th scope="col">Project Name</th>
												<th scope="col">Status</th>
											</tr>
										</thead>
										<%
										List<Project_UserBean> list6 = (List<Project_UserBean>)request.getAttribute("list6");
										%>
										<%
										List<ProjectBean> list2 = (List<ProjectBean>)request.getAttribute("list2");
										%>
										<%
										List<UserBean> list5 = (List<UserBean>)request.getAttribute("list5");
										%>
										<tbody>
											<% for(Project_UserBean pu:list6){ %>
											<tr>
												<td><%=pu.getFirstName()%></td>
												<td><%=pu.getTitle()%></td>
												<td><%=pu.getAssignStatusId()%></td>
											</tr>
											<%} %>
										</tbody>
									</table>
									<div class="icon" align="right">
										<a href="addproject_user"><i class="bi bi-plus-circle-fill"></i>
										</a>
										<div class="label">Add New Project User</div>
									</div>
								</div>
								
							</div>
							<!-- End Table with stripped rows -->

						</div>
					</div>

		</section>

	</main>

 <jsp:include page="AllJs.jsp"></jsp:include>
  
	

</body>
</html>
