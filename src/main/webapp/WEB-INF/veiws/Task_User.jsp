<%@page import="com.Unnati.bean.TaskBean"%>
<%@page import="com.Unnati.bean.UserBean"%>
<%@page import="com.Unnati.bean.StatusBean"%>
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
                    <h5 class="card-title text-center pb-0 fs-4">Add Task User</h5>
                  </div>

	<%
	List<StatusBean>  list1= (List<StatusBean>)request.getAttribute("list1");
	%>
	<%
	List<UserBean> list5 = (List<UserBean>)request.getAttribute("list5");
	%>
	<%
	List<TaskBean> list4 = (List<TaskBean>)request.getAttribute("list4");
	%>
	

                  <form class="row g-3 needs-validation" novalidate action="savetask_user" method="post">

					<select name="userId" class="form-select">	
					<option>---Select User---</option>
					<%
					for (UserBean us :list5) {
					%>
					<option value="<%=us.getUserId()%>"><%=us.getFirstName()%></option>
					<%} %>
					</select>
					
					<select name="taskId" class="form-select">
					<option>---Task Details---</option>
					<%
					for (TaskBean ta :list4) {
					%>
					<option value="<%=ta.getTaskId()%>"><%=ta.getTitle()%></option>
					<%} %>
					</select>
					
					<select name="assignStatus" class="form-select">
					<option>---Assign Status---</option>
					<option value="1">Assign</option>
					<option value="2">Revoke</option>
					</select>                    
                    
					<select name="statusId" class="form-select">
					<option>---Status Details---</option>
					<%
					for (StatusBean st :list1) {
					%>
					<option value="<%=st.getStatusId()%>"><%=st.getStatus()%></option>
					<%} %>
					</select>
					
					<div class="col-12">
                      <label class="form-label">Utilized Hours</label>
                      <input type="number" name="utilizedHours" class="form-control" required>
                      <div class="invalid-feedback">Please enter Utilized Hours!</div>
                    </div>
						
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Add Task User</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0"><a href="listproject_user">List Task User</a></p>
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