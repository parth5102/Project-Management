<%@page import="com.Unnati.bean.StatusBean"%>
<%@page import="com.Unnati.bean.ProjectBean"%>
<%@page import="java.util.List"%>
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
	List<ProjectBean> list = (List<ProjectBean>)request.getAttribute("list");
	%>
	<%
	List<StatusBean>  list1= (List<StatusBean>)request.getAttribute("list1");
	%>
	<form action="savemodule" method="post">
		ModuleName : <input type="text" name="moduleName" /><br>
		  ProjectId : <select name="projectId">
			<%
			for (ProjectBean pr : list) {
			%>
			<option value="<%=pr.getProjectId()%>">
				<%=pr.getTitle()%></option>
			<%
			}
			%>
		</select><br>
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
		Description : <input type="text" name="description"/><br>
		Document URL :<input type="text" name="docURL"/><br>
		Estimated Hours : <input type="number" name="estimatedHours"/><br>
		Total Utilized Hours : <input type="number" name="totalUtilizedHours" /><br>
	
		<br>
		<br> <input type="submit" value="Add Module">
	</form>

</body>
</html>