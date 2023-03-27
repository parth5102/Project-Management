<%@page import="org.apache.tomcat.util.security.MD5Encoder"%>
<%@page import="com.Unnati.bean.ModuleBean"%>
<%@page import="com.Unnati.bean.StatusBean"%>
<%@page import="com.Unnati.bean.ProjectBean"%>
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
                    <h5 class="card-title text-center pb-0 fs-4">Add New Task </h5>
                  </div>

					<%
	List<ProjectBean> list2 = (List<ProjectBean>)request.getAttribute("list2");
	%>
	<%
	List<StatusBean>  list1= (List<StatusBean>)request.getAttribute("list1");
	%>
	<%
	List<ModuleBean>  list3= (List<ModuleBean>)request.getAttribute("list3");
	%>

                  <form class="row g-3 needs-validation" novalidate action="savetask" method="post">




					<select name="moduleId" class="form-select">
					<option>---Select Module---</option>
					<%
					for (ModuleBean md :list3) {
					%>
					<option value="<%=md.getModuleId()%>"><%=md.getModuleName() %></option>
					<%} %>
					</select>
					
					<select name="projectId" class="form-select">
					<option>---Select Project---</option>
					<%
					for (ProjectBean pr :list2) {
					%>
					<option value="<%=pr.getProjectId()%>"><%=pr.getTitle()%></option>
					<%} %>
					</select>
					
					<select name="statusId" class="form-select">
					<option>---Select Status---</option>
					<%
					for (StatusBean st :list1) {
					%>
					<option value="<%=st.getStatusId()%>"><%=st.getStatus()%></option>
					<%} %>
					</select>
	
                    
                    <div class="col-12">
                      <label class="form-label">Estimated Hours</label>
                      <input type="number" name="estimatedHours" class="form-control" required>
                      <div class="invalid-feedback">Please enter Estimated Hours!</div>
                    </div>
						
					 <div class="col-12">
                      <label class="form-label">Utilized Hours</label>
                      <input type="number" name="totalUtilizedHours" class="form-control" required>
                      <div class="invalid-feedback">Please enter Utilized Hours!</div>
                    </div>
                    
                     <div class="col-12">
                      <label class="form-label">Document URL</label>
                      <input type="text" name="docURL" class="form-control"  required>
                      <div class="invalid-feedback">Please enter Document URL</div>
                    </div>
                    
                    <div class="col-12">
                      <label class="form-label">Description</label>
                      <input type="text" name="description" class="form-control"  required>
                      <div class="invalid-feedback">Please enter Description</div>
                    </div>
						
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Add Task</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0"><a href="listtask">List Task</a></p>
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



<%-- 	<%
	List<ProjectBean> list2 = (List<ProjectBean>)request.getAttribute("list2");
	%>
	<%
	List<StatusBean>  list1= (List<StatusBean>)request.getAttribute("list1");
	%>
	<%
	List<ModuleBean>  list3= (List<ModuleBean>)request.getAttribute("list3");
	%>
	<form action="savetask" method="post">
		  Module : <select name="moduleId">
			<%
			for (ModuleBean m : list3) {
			%>
			<option value="<%=m.getModuleId()%>">
				<%=m.getModuleName()%></option>
			<%
			}
			%>
		</select><br> 
		 Project : <select name="projectId">
			<%
			for (ProjectBean pr : list2) {
			%>
			<option value="<%=pr.getProjectId()%>">
				<%=pr.getTitle()%></option>
			<%
			}
			%>
		</select><br> 
		  
		  
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
		
		
		Estimated Hours : <input type="number" name="estimatedHours" /><br>
		Total Utilized Hours : <input type="number" name="totalUtilizedHours" /><br>
		Doc URL : <input type="text" name="docURL" /><br>
		Description : <input type="text" name="description" /><br>
		
	
	
		<br> <input type="submit" value="Add Project">
	</form>
 --%>