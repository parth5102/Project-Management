<%@page import="com.Unnati.bean.Task_UserBean"%>
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
												<th scope="col">Task User Id</th>
												<th scope="col">User Name</th>
												<th scope="col">Task Name</th>
												<th scope="col">Assign Status</th>
												<th scope="col">Status</th>
												<th scope="col">Utilized Hours</th>
											</tr>
										</thead>
										<%
										List<Task_UserBean> list7 = (List<Task_UserBean>)request.getAttribute("list7");
										%>
										<tbody>
											<% for(Task_UserBean tu:list7){ %>
											<tr>
												<td><%=tu.getTaskUserId()%></td>
												<td><%=tu.getFirstName()%></td>
												<td><%=tu.getTitle()%></td>
												<td><%=tu.getAssignStatus()%></td>
												<td><%=tu.getStatus()%></td>
												<td><%=tu.getUtilizedHours()%></td>
											</tr>
											<%} %>
										</tbody>
									</table>
									<div class="icon" align="right">
										<a href="addtask_user"><i class="bi bi-plus-circle-fill"></i>
										</a>
										<div class="label">Add New Task User</div>
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