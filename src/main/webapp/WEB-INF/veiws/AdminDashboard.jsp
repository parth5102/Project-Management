	<%@page import="com.Unnati.bean.ProjectChartBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--  <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
</head>
<body>
<h1>Admin Dashboard</h1>

	<a href="newtechnology">Add New Technology</a>
	<br>
	<br>
	<a href="listtechnology">List Technology</a>
	<br>
	<br>
	<a href="newproject">Add new Project</a>
	<br>
	<br>
	<a href="listproject">List Project</a>
	<br>
	<br>
	<a href="newmodule">Add new Module</a>
	<br>
	<br>
	<a href="listmodule">List Module</a>
	<br>
	<br>
	<a href="newtask">New Task</a>
	<br>
	<br>
	<a href="listtask">List Task</a>
	<br>
	<br>
	<a href="logout">LogOut</a>
	<br>
	<br>
	<a href="addproject_user">Project User</a>

</body>
</html>
-->

<html>
<head>
<jsp:include page="AllHeader.jsp"></jsp:include>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</head>

<body>

	<jsp:include page="AdminSideBar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>DashBoard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">DashBoard</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">

						<!-- Sales Card -->
						<div class="col-xxl-3 col-md-3">
							<div class="card info-card sales-card">

								<!-- <div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div> -->

								<div class="card-body">
									<h5 class="card-title">
										Total Project
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-people"></i>
										</div>
										<div class="ps-3">
											<h6>${getTotalProjectYear}</h6>
											<!-- <span class="text-success small pt-1 fw-bold">12%</span> <span
												class="text-muted small pt-2 ps-1">increase</span>
 -->
										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Sales Card -->

						<!-- Revenue Card -->
						<div class="col-xxl-3 col-md-3">
							<div class="card info-card revenue-card">

							<!-- 	<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>
 -->
								<div class="card-body">
									<h5 class="card-title">
										Ongoing Project
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-people"></i>
										</div>
										<div class="ps-3">
											<h6>${getTotalProjectOnGoing}</h6>
											<!-- <span class="text-success small pt-1 fw-bold">8%</span> <span
												class="text-muted small pt-2 ps-1">increase</span>
 -->
										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Revenue Card -->

						<div class="col-xxl-3 col-md-3">
							<div class="card info-card revenue-card">

								<!-- <div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div> -->

								<div class="card-body">
									<h5 class="card-title">
										Pending Project
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-people"></i>
										</div>
										<div class="ps-3">
											<h6>${getTotalPipeLine}</h6>
											<!-- <span class="text-success small pt-1 fw-bold">8%</span> <span
												class="text-muted small pt-2 ps-1">increase</span>
 -->
										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Revenue Card -->


						<!-- Customers Card -->
						<div class="col-xxl-3 col-md-3">

							<div class="card info-card customers-card">

								<!-- <div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div> -->

								<div class="card-body">
									<h5 class="card-title">
										Delayed Project
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-people"></i>
										</div>
										<div class="ps-3">
											<h6>${getTotalProjectDelayed}</h6>
											<!-- <span class="text-danger small pt-1 fw-bold">12%</span> <span
												class="text-muted small pt-2 ps-1">decrease</span> -->

										</div>
									</div>

								</div>
							</div>

						</div>
						<!-- End Customers Card -->

						<!-- Reports -->
				 <div class="col-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Bar Chart</h5>
              
              <%
              List<ProjectChartBean> chartData = (List<ProjectChartBean>)request.getAttribute("chartData");
              %>

              <!-- Bar Chart -->
				<div>
              <canvas id="barChart"></canvas>
              </div>
              <script>
              colorArray =  [
			      'rgba(255, 99, 132, 0.5)',
			      'rgba(255, 159, 64, 0.5)',
			      'rgba(255, 205, 86, 0.5)',
			      'rgba(75, 192, 192, 0.5)',
			      'rgba(54, 162, 235, 0.5)',
			      'rgba(153, 102, 255, 0.5)',
			      'rgba(201, 203, 207, 0.5)',
			      'rgba(230, 125, 57, 0.5)',
			      'rgba(125, 230, 57, 0.5)',
			      'rgba(112, 150, 110, 0.5)',
			      'rgba(55, 55, 55, 0.5)',
			      'rgba(66, 66, 66, 0.5)'
			      
			    ]
			 
			 bgColor = [];
			 
					<%for(int i=0;i<chartData.size();i++){%>
					
						bgColor.push(colorArray[<%=i%>]);
					<%}%>
			
				const ctx = document.getElementById('barChart');
				new Chart(
						ctx,
						{
							type : 'bar',
							data : {
								labels : [ 
									<%for (ProjectChartBean pc : chartData) {%>
									 '<%=pc.getMonth()%>',
										<%}%>],
								datasets : [ {
									label : '# of TotalProject',
									data : [
										<%for (ProjectChartBean pc : chartData) {%>
												<%=pc.getProjectCount()%>,
										<%}%>
										],
										backgroundColor:bgColor
										,
                        borderWidth: 1
                      }]
                    },
                    options: {
                      scales: {
                        y: {
                          beginAtZero: true
                        }
                      }
                    }
                  });
              </script>
              <!-- End Bar CHart -->

            </div>
          </div>
        </div>
						<!-- End Reports -->

										</div>
				</div>
				<!-- End Left side columns -->

			

			</div>
		</section>

	</main>
	<!-- End #main -->
<jsp:include page="AllJs.jsp"></jsp:include>

</body>
</html>