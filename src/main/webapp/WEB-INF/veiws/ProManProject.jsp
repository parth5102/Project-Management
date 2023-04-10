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
							

									
									<table id="projectTable" class="datatable" border="1">
										<thead>
											<tr>
												<th >Project Title</th>
												<th scope="col">Description</th>
												<th scope="col">Technology</th>
												<th scope="col">Estimated</th>
												<th scope="col">Start Date</th>
												<th scope="col">Completion</th>
												<th scope="col">Utilized</th>
												<th scope="col">Status</th>
												<th scope="col">Action</th>
											</tr>
										</thead>
									<%-- 	<%
										List<ProjectBean> list2 =  (List<ProjectBean>)request.getAttribute("list2");
										%>
										<tbody>
											<% for(ProjectBean tc:list2){ %>
									 --%>		<tr>
												<td><%=tc.getTitle()%></td>
												<td><%=tc.getDescription()%></td>
												<td><%=tc.getTechnologyName()%></td>
												<td><%=tc.getEstimatedHours()%></td>
												<td><%=tc.getStartDate()%></td>
												<td><%=tc.getComplitionDate()%></td>
												<td><%=tc.getUtilizedHours()%></td>
												<td><%=tc.getStatus()%></td>
												<td><a href="viewproject?projectId=<%=tc.getProjectId()%>">View</a></td>
											</tr>
											<%} %>
										</tbody>
									</table>
									<div class="icon" align="right">
										<a href="newproject"><i class="bi bi-plus-circle-fill"></i>
										</a>
										<div class="label">Add New Project</div>
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