<%@page import="com.Unnati.bean.UserBean"%>
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
                    <h5 class="card-title text-center pb-0 fs-4">Add Project User</h5>
                  </div>

	<%
	List<ProjectBean>  list2= (List<ProjectBean>)request.getAttribute("list2");
	%>
	<%
	List<UserBean> managerlist = (List<UserBean>)request.getAttribute("managerlist");
	%>
	

                  <form class="row g-3 needs-validation" novalidate action="saveproject_user" method="post">

					<select name="userId" class="form-select">	
					<option>---Select User---</option>
					<%
					for (UserBean us :managerlist) {
					%>
					<option value="<%=us.getUserId()%>"><%=us.getFirstName()%></option>
					<%} %>
					</select>
					
					<select name="projectId" class="form-select">
					<option>---Project Details---</option>
					<%
					for (ProjectBean pr :list2) {
					%>
					<option value="<%=pr.getProjectId()%>"><%=pr.getTitle()%></option>
					<%} %>
					</select>
					
					<select name="assignStatusId" class="form-select">
					<option>---Assign Status---</option>
					<option value="1">Assign</option>
					<option value="2">Revoke</option>
					</select>                    
                    
						
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Add Project User</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0"><a href="listproject_user">List Project User</a></p>
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
	List<UserBean> list5 = (List<UserBean>)request.getAttribute("list5");
	%>	
	<form action="saveproject_user" method="post">
		  User Details : <select name="userId">
			<%
			for (UserBean us : list5) {
			%>
			<option value="<%=us.getUserId()%>">
				<%=us.getFirstName()%></option>
			<%
			}
			%>
		</select><br>

	  Project Details : <select name="projectId">
			<%
			for (ProjectBean pr : list2) {
			%>
			<option value="<%=pr.getProjectId()%>">
				<%=pr.getTitle()%></option>
			<%
			}
			%>
		</select><br>

		Assign Status :<select name="assignStatusId">
		
		<option value="1">Assign</option>
		<option value="2">Revoke</option>	
		</select><br>
		<input type="submit" value="Add Project User">
</form> --%>