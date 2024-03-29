<%@page import="com.Unnati.bean.ModuleBean"%>
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
							<h5 class="card-title">DataTables</h5>
							
									<table id="moduleTable" class="datatable" border="1">
										<thead>
											<tr>
												<th scope="col">Module Id</th>
												<th scope="col">Module Name</th>
												<th scope="col">Project Id</th>
												<th scope="col">Status Id</th>
												<th scope="col">Description</th>
												<th scope="col">Estimated Hours</th>
												<th scope="col">Utilized Hours</th>
												<th scope="col">Action</th>
											</tr>
										</thead>
										<%
										List<ModuleBean> list3 = (List<ModuleBean>) request.getAttribute("list3");
										%>
										<tbody>
											<%
											for (ModuleBean md : list3) {
											%>
											<tr data-index="0">
												<td><%=md.getModuleId()%></td>
												<td><%=md.getModuleName()%></td>
												<td><%=md.getTitle()%></td>
												<td><%=md.getStatus()%></td>
												<td><%=md.getDescription()%></td>
												<td><%=md.getEstimatedHours()%></td>
												<td><%=md.getTotalUtilizedHours()%></td>
													<td><a href="viewmodule?moduleId=<%=md.getModuleId()%>"><i class="bi bi-eye"></i></a>|
													<a class="text-warning" href="uploadmodule?moduleId=<%=md.getModuleId()%>"><i class="bi bi-upload"></i></a>
													</td>

											</tr>
											<%
											}
											%>
										</tbody>
									</table>
									<div class="icon" align="right">
										<a href="newmodule"><i class="bi bi-plus-circle-fill"></i>
										</a>
										<div class="label">Add New Module</div>
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



<%-- <%
	List<ModuleBean> list3 = (List<ModuleBean>)request.getAttribute("list3");
%>

<table border="1">
 		<tr>
 			<th>Module Id</th>
 			<th>Module Name</th>
 			<th>Project Id</th>
 			<th>Status Id</th>
 			<th>Description</th>
 			<th>Document URL</th>
 			<th>Estimated Hours</th>
 			<th>Total Utilized Hours</th>
 			</tr>
 		<% for(ModuleBean md:list3){ %>
 		<tr>
			<td><%=md.getModuleId()%></td>
			<td><%=md.getModuleName()%></td>
			<td><%=md.getTitle()%></td>
			<td><%=md.getStatus()%></td>
			<td><%=md.getDescription()%></td>
			<td><%=md.getDocURL()%></td>
			<td><%=md.getEstimatedHours()%></td>
			<td><%=md.getTotalUtilizedHours()%></td>
			</tr>
 		<%} %>
 		
 		
 		</table> --%>