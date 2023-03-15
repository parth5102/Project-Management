<%@page import="java.util.List"%>
<%@page import="com.Unnati.bean.TechnologyBean"%>
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
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Datatables</h5>
							
									<%
									List<TechnologyBean> list = (List<TechnologyBean>) request.getAttribute("list");
									%>
									<table id="technologyTable" class="datatable" border="1">
										<thead>
											<tr>
												<th scope="col">Technology Id</th>
												<th scope="col">Technology Name</th>
												<th scope="col">Deleted</th>
												<th scope="col">Action</th>
											</tr>
										</thead>
										<tbody>
											<%
											for (TechnologyBean tc : list) {
											%>

											<tr>
												<th scope="col"><%=tc.getTechnologyId()%></th>
												<td><%=tc.getTechnologyName()%></td>
												<td><%=tc.getDeleted()%></td>
												<td><a
													href="deletetechnology/<%=tc.getTechnologyId()%>">Deleted</a></td>
											</tr>
											<%
											}
											%>
										</tbody>
									</table>
									<div class="icon" align="right">
										<a href="newtechnology"><i class="bi bi-plus-circle-fill"></i>
										</a>
										<div class="label">Add New Technology</div>
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

<%-- <h1> List Technology</h1>

<%
List<TechnologyBean> list =  (List<TechnologyBean>)request.getAttribute("list");
%>
 		<table border="1">
 		<tr>
 			<th>TechnologyId</th>
 			<th>TechnologyName</th>
 			<th>Deleted</th>
 			</tr>
 		<% for(TechnologyBean tc:list){ %>
 		<tr>
			<td><%=tc.getTechnologyId()%></td>
			<td><%=tc.getTechnologyName()%></td>
			<td><%=tc.getDeleted()%></td>
			<td><a href="deletetechnology/<%=tc.getTechnologyId()%>">Deleted</a></td>
 		</tr>
 		<%} %>
 		
 		
 		</table>
	 --%>