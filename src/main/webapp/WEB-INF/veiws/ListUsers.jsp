<%@page import="com.Unnati.bean.UserBean"%>
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
							
									<%
									List<UserBean> list5 = (List<UserBean>)request.getAttribute("list5");
									%>
									<table id="usersTable" class="datatable" border="1">
										<thead>
											<tr>
												<th scope="col">First Name</th>
												<th scope="col">Last Name</th>
												<th scope="col">Email</th>
												<th scope="col">Password</th>
												<th scope="col">Role</th>
												</tr>
										</thead>
										<tbody>
											<%
											for (UserBean us : list5) {
											%>

											<tr>
												<th scope="col"><%=us.getFirstName()%></th>
												<td><%=us.getLastName()%></td>
												<td><%=us.getEmail()%></td>
												<td><%=us.getPassword()%></td>
												<td><%=us.getRole()%></td>
											</tr>
											<%
											}
											%>
										</tbody>
									</table>
									<div class="icon" align="right">
										<a href="signup"><i class="bi bi-plus-circle-fill"></i>
										</a>
										<div class="label">Add New User</div>
									</div>
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