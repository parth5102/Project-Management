<%@page import="com.Unnati.bean.TaskBean"%>
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
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<h5 class="card-title">DataTables</h5>



							<table id="taskTable" class="datatable" border="1">
								<%
								List<TaskBean> list4 = (List<TaskBean>)request.getAttribute("list4");
								%>
								<thead>
									<tr>
										<th scope="col">Module Title</th>
										<th scope="col">Title</th>
										<th scope="col">status</th>
										<th scope="col">Estimated Hours</th>
										<th scope="col">Total Utilized Hours</th>
										<th scope="col">Doc URL</th>
										<th scope="col">Description</th>
									</tr>
								</thead>
								


								<tbody>
								<%
								for (TaskBean tk : list4) {
								%>
									<tr data-index="0">
										<td><%=tk.getModuleName()%></td>
										<td><%=tk.getTitle()%></td>
										<td><%=tk.getStatus()%></td>
										<td><%=tk.getEstimatedHours()%></td>
										<td><%=tk.getTotalUtilizedHours()%></td>
										<td><%=tk.getDocURL()%></td>
										<td><%=tk.getDescription()%></td>
									</tr>
								<%}%>	
								</tbody>
								</table>
							<div class="icon" align="right">
								<a href="newtask1"><i class="bi bi-plus-circle-fill"></i> </a>
								<div class="label">Add New Task</div>
							</div>

						</div>

					</div>

					<!-- Table with stripped rows -->

				</div>
			</div>

		</section>

	</main>
	<!-- End #main -->

	<jsp:include page="AllJs.jsp"></jsp:include>

</body>
</html>




<%-- <%
List<TaskBean> list4 =  (List<TaskBean>)request.getAttribute("list4");
%>
 		<table border="1">
 		<tr>
 			<th>Task Id</th>
 			<th>Module Title</th>
 			<th>Title</th>
 			<th>Status</th>
 			<th>Estimated Hours</th>
 			<th>Total Utilized Hours</th>
 			<th>Doc URL</th>
 			<th>Description</th>
 			</tr>
 		<% for(TaskBean tk:list4){ %>
 		<tr>
			<td><%=tk.getTaskId()%></td>
			<td><%=tk.getModuleName()%></td>
			<td><%=tk.getTitle()%></td>
			<th><%=tk.getStatus() %></th>
			<td><%=tk.getEstimatedHours()%></td>
			<td><%=tk.getTotalUtilizedHours()%></td>
			<td><%=tk.getDocURL()%></td>
			<td><%=tk.getDescription()%></td>
 		</tr>
 		<%} %>
 		
 		
 		</table> --%>