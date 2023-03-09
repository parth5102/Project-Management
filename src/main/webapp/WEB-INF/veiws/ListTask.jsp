<%@page import="com.Unnati.bean.TaskBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Task</title>
</head>
<body>



<%
List<TaskBean> list4 =  (List<TaskBean>)request.getAttribute("list4");
%>
 		<table border="1">
 		<tr>
 			<th>Task Id</th>
 			<th>Module Title</th>
 			<th>Title</th>
 			<th>Status</th>
 			<th>Estimated Hours</th>
 			<th>Total Utilized Hours</th>
 			<th>Doc URL</th>
 			<th>Description</th>
 			</tr>
 		<% for(TaskBean tk:list4){ %>
 		<tr>
			<td><%=tk.getTaskId()%></td>
			<td><%=tk.getModuleId()%></td>
			<td><%=tk.getProjectId()%></td>
			<th><%=tk.getStatusId() %></th>
			<td><%=tk.getEstimatedHours()%></td>
			<td><%=tk.getTotalUtilizedHours()%></td>
			<td><%=tk.getDocURL()%></td>
			<td><%=tk.getDescription()%></td>
 		</tr>
 		<%} %>
 		
 		
 		</table>
</body>
</html>