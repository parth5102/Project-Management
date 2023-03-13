<%@page import="com.Unnati.bean.UserBean"%>
<%@page import="com.Unnati.bean.ProjectBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Project User </title>
</head>
<body>

	<%
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
</form>
</body>
</html>