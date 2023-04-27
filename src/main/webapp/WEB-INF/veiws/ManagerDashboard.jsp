	<%@page import="com.Unnati.bean.ProjectChartBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<jsp:include page="AllHeader.jsp"></jsp:include>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</head>

<body>

	<jsp:include page="ManagerSideBar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>DashBoard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="managerdashboard">Home</a></li>
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
										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Sales Card -->

						<!-- Revenue Card -->
						<div class="col-xxl-3 col-md-3">
							<div class="card info-card revenue-card">
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
											<h6>${getTotalRunningProject}</h6>
										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Revenue Card -->

						<div class="col-xxl-3 col-md-3">
							<div class="card info-card revenue-card">
								<div class="card-body">
									<h5 class="card-title">
										Complete Hours
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-people"></i>
										</div>
										<div class="ps-3">
											<h6>${getUtilizedHours}</h6>
										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Revenue Card -->


						<!-- Customers Card -->
						<div class="col-xxl-3 col-md-3">

							<div class="card info-card customers-card">
								<div class="card-body">
									<h5 class="card-title">
										Estimated Hours
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-people"></i>
										</div>
										<div class="ps-3">
											<h6>${getEstimatedHours}</h6>
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