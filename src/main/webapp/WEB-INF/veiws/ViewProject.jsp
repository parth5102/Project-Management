<%@page import="com.Unnati.bean.ProjectBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>

<h1>View Project Details</h1>
<%
	ProjectBean projectBean = (ProjectBean) request.getAttribute("projectBean");
%>

	ProjectId :<%=projectBean.getProjectId() %><br>
	Project Title:<%=projectBean.getTitle() %><br>
	Project Description :<%=projectBean.getDescription() %><br>
	Technology name :<%=projectBean.getTechnologyName()%><br>
	Estimated Hours:<%=projectBean.getEstimatedHours()%><br>
	Start Date :<%=projectBean.getStartDate()%><br>
	Complition Date :<%=projectBean.getComplitionDate() %><br>
	Utilized Hours:<%=projectBean.getUtilizedHours()%><br>
	Status:<%=projectBean.getStatus()%><br>
	
	

</body>
</html>