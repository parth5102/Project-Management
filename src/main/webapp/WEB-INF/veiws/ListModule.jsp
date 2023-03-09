<%@page import="com.Unnati.bean.ModuleBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Module</title>
</head>
<body>

<%
	List<ModuleBean> list3 = (List<ModuleBean>)request.getAttribute("list3");
%>

<table border="1">
 		<tr>
 			<th>Module Id</th>
 			<th>Module Name</th>
 			<th>Project Id</th>
 			<th>Status Id</th>
 			<th>Description</th>
 			<th>Document URL</th>
 			<th>Estimated Hours</th>
 			<th>Total Utilized Hours</th>
 			</tr>
 		<% for(ModuleBean md:list3){ %>
 		<tr>
			<td><%=md.getModuleId()%></td>
			<td><%=md.getModuleName()%></td>
			<td><%=md.getTitle()%></td>
			<td><%=md.getStatus()%></td>
			<td><%=md.getDescription()%></td>
			<td><%=md.getDocURL()%></td>
			<td><%=md.getEstimatedHours()%></td>
			<td><%=md.getTotalUtilizedHours()%></td>
			</tr>
 		<%} %>
 		
 		
 		</table>
</body>
</html>