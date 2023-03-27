<%@page import="com.Unnati.bean.StatusBean"%>
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



<main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
           <div class="col-lg-2"></div>
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Add New Project </h5>
                  </div>

	<%
	List<StatusBean>  list1= (List<StatusBean>)request.getAttribute("list1");
	%>
	<%
	List<TechnologyBean> list = (List<TechnologyBean>)request.getAttribute("list");
	%>
	

                  <form class="row g-3 needs-validation" novalidate action="saveproject" method="post">



					 <div class="col-12">
                      <label class="form-label">Title</label>
                      <input type="text" name="title" class="form-control" required>
                      <div class="invalid-feedback">Please enter Title!</div>
                    </div>
                    
                       <div class="col-12">
                      <label class="form-label">Description</label>
                      <input type="text" name="description" class="form-control"  required>
                      <div class="invalid-feedback">Please enter Description</div>
                    </div>
					
					
					<select name="technologyId" class="form-select">
					<option>---Select Technology---</option>
					<%
					for (TechnologyBean tc :list) {
					%>
					<option value="<%=tc.getTechnologyId()%>"><%=tc.getTechnologyName()%></option>
					<%} %>
					</select>
					
					 <div class="col-12">
                      <label class="form-label">Estimated Hours</label>
                      <input type="number" name="estimatedHours" class="form-control" required>
                      <div class="invalid-feedback">Please enter Estimated Hours!</div>
                    </div>                 
					
                     <div class="col-12">
                      <label class="form-label">Start Date</label>
                      <input type="date" name="startDate" class="form-control"  required>
                      <div class="invalid-feedback">Please enter Start Date!</div>
                    </div>
                    
                      <div class="col-12">
                      <label class="form-label">Completion Date</label>
                      <input type="date" name="complitionDate" class="form-control"  required>
                      <div class="invalid-feedback">Please enter Completion Date!</div>
                    </div>
                    	
					 <div class="col-12">
                      <label class="form-label">Utilized Hours</label>
                      <input type="number" name="utilizedHours" class="form-control" required>
                      <div class="invalid-feedback">Please enter Utilized Hours!</div>
                    </div>
                    
                    <select name="statusId" class="form-select">
					<option>---Select Status---</option>
					<%
					for (StatusBean st :list1) {
					%>
					<option value="<%=st.getStatusId()%>"><%=st.getStatus()%></option>
					<%} %>
					</select>
						
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Add Project</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0"><a href="listproject">List Project</a></p>
                    </div>
                  </form>

                </div>
              </div>

              
            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->
  <jsp:include page="AllJs.jsp"></jsp:include>
  
</body>
</html>


<%-- 
	<%
	List<TechnologyBean> list = (List<TechnologyBean>)request.getAttribute("list");
	%>
	<%
	List<StatusBean>  list1= (List<StatusBean>)request.getAttribute("list1");
	%>
	<form action="saveproject" method="post">
		Title : <input type="text" name="title" /><br>
		 Description : <input type="text" name="description" /><br>
		  technology : <select name="technologyId">
			<%
			for (TechnologyBean tc : list) {
			%>
			<option value="<%=tc.getTechnologyId()%>">
				<%=tc.getTechnologyName()%></option>
			<%
			}
			%>
		</select><br> Estimated Hours : <input type="number" name="estimatedHours" /><br>
		Start Date : <input type="text" name="startDate" /><br>
		Completion Date : <input type="text" name="complitionDate" /><br>
		Utilized Hours : <input type="number" name="utilizedHours" /><br>
		Status : <select name="statusId">
		<%
		for (StatusBean st: list1){
		%>
		<option value="<%=st.getStatusId()%>">
		<%=st.getStatus()%></option>
		<%
		}
		%>
		</select>
		<br>
		<br> <input type="submit" value="Add Project">
	</form> --%>