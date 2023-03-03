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
List<ProjectBean> list =  (List<ProjectBean>)request.getAttribute("list");
%>
 		<table border="1">
 		<tr>
 			<th>Project Id</th>
 			<th>Project Title</th>
 			<th>Description</th>
 			<th>Technology Id</th>
 			<th>Estimated Hours</th>
 			<th>Start Date</th>
 			<th>Completion Date</th>
 			<th>Utilized Hours</th>
 			<th>Status</th>
 			<th>deleted</th>
 			</tr>
 		<% for(ProjectBean tc:list){ %>
 		<tr>
			<td><%=tc.getProjectId()%></td>
			<td><%=tc.getTitle()%></td>
			<td><%=tc.getDescription()%></td>
			<td><%=tc.getTechnologyId()%></td>
			<td><%=tc.getEstimatedHours()%></td>
			<td><%=tc.getStartDate()%></td>
			<td><%=tc.getComplitionDate()%></td>
			<td><%=tc.getUtilizedHours()%></td>
			<td><%=tc.getStatusId() %></td>
			<td><%=tc.isDeleted()%></td>
			<td><a href="deleteproject/<%=tc.getProjectId()%>">Deleted</a></td>
 		</tr>
 		<%} %>
 		
 		
 		</table>

</body>
</html>