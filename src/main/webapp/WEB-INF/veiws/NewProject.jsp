<%@page import="com.Unnati.bean.StatusBean"%>
<%@page import="java.util.List"%>
<%@page import="com.Unnati.bean.TechnologyBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Project</title>
</head>
<body>

	<%
	List<TechnologyBean> list = (List<TechnologyBean>)request.getAttribute("list");
	%>
	<%
	List<StatusBean>  list1= (List<StatusBean>)request.getAttribute("list1");
	%>
	<form action="saveproject" method="post">
		Title : <input type="text" name="title" /><br>
		 Description : <input type="text" name="description" /><br>
		  technology : <select name="technologyId">
			<%
			for (TechnologyBean tc : list) {
			%>
			<option value="<%=tc.getTechnologyId()%>">
				<%=tc.getTechnologyName()%></option>
			<%
			}
			%>
		</select><br> Estimated Hours : <input type="number" name="estimatedHours" /><br>
		Start Date : <input type="text" name="startDate" /><br>
		Completion Date : <input type="text" name="complitionDate" /><br>
		Utilized Hours : <input type="number" name="utilizedHours" /><br>
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
		<br> <input type="submit" value="Add Project">
	</form>

</body>
</html>