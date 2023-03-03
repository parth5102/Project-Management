<%@page import="java.util.List"%>
<%@page import="com.Unnati.bean.TechnologyBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Project Management| List Technology </title>
</head>
<body>
<h1> List Technology</h1>

<%
List<TechnologyBean> list =  (List<TechnologyBean>)request.getAttribute("list");
%>
 		<table border="1">
 		<tr>
 			<th>TechnologyId</th>
 			<th>TechnologyName</th>
 			<th>Deleted</th>
 			</tr>
 		<% for(TechnologyBean tc:list){ %>
 		<tr>
			<td><%=tc.getTechnologyId()%></td>
			<td><%=tc.getTechnologyName()%></td>
			<td><%=tc.getDeleted()%></td>
			<td><a href="deletetechnology/<%=tc.getTechnologyId()%>">Deleted</a></td>
 		</tr>
 		<%} %>
 		
 		
 		</table>
	
</body>
</html>