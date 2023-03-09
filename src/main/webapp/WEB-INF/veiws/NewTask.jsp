<%@page import="com.Unnati.bean.ModuleBean"%>
<%@page import="com.Unnati.bean.StatusBean"%>
<%@page import="com.Unnati.bean.ProjectBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Task</title>
</head>
<body>


	<%
	List<ProjectBean> list2 = (List<ProjectBean>)request.getAttribute("list2");
	%>
	<%
	List<StatusBean>  list1= (List<StatusBean>)request.getAttribute("list1");
	%>
	<%
	List<ModuleBean>  list3= (List<ModuleBean>)request.getAttribute("list3");
	%>
	<form action="savetask" method="post">
		  Module : <select name="moduleId">
			<%
			for (ModuleBean m : list3) {
			%>
			<option value="<%=m.getModuleId()%>">
				<%=m.getModuleName()%></option>
			<%
			}
			%>
		</select><br> 
		 Project : <select name="projectId">
			<%
			for (ProjectBean pr : list2) {
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
		<br>
		
		
		Estimated Hours : <input type="number" name="estimatedHours" /><br>
		Total Utilized Hours : <input type="number" name="totalUtilizedHours" /><br>
		Doc URL : <input type="text" name="docURL" /><br>
		Description : <input type="text" name="description" /><br>
		
	
	
		<br> <input type="submit" value="Add Project">
	</form>

</body>
</html>