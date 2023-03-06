<%@page import="java.util.List"%>
<%@page import="com.Unnati.bean.ProjectBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
List<ProjectBean> list2 =  (List<ProjectBean>)request.getAttribute("list2");
%>
 		<table border="1">
 		<tr>
 			<th>Project Id</th>
 			<th>Project Title</th>
 			<th>Description</th>
 			<th>Technology Name</th>
 			<th>Estimated Hours</th>
 			<th>Start Date</th>
 			<th>Completion Date</th>
 			<th>Utilized Hours</th>
 			<th>Status</th>
 			<th>Action</th>
 			</tr>
 		<% for(ProjectBean tc:list2){ %>
 		<tr>
			<td><%=tc.getProjectId()%></td>
			<td><%=tc.getTitle()%></td>
			<td><%=tc.getDescription()%></td>
			<th><%=tc.getTechnologyName() %></th>
			<td><%=tc.getEstimatedHours()%></td>
			<td><%=tc.getStartDate()%></td>
			<td><%=tc.getComplitionDate()%></td>
			<td><%=tc.getUtilizedHours()%></td>
			<td><%=tc.getStatus()%></td>
			<td><%=tc.isDeleted()%></td>
			<td><a href="deleteproject/<%=tc.getProjectId()%>">Deleted</a>|
			<a href="viewproject/<%=tc.getProjectId()%>">View</a>
			</td>
 		</tr>
 		<%} %>
 		
 		
 		</table>

</body>
</html>