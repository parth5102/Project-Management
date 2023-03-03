<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="otpforforgetpassword" method="post">
	 
		Email :<input type="email" name="email"><br><br>
		 
		<input type="submit" value="Send Otp"/>
		
	</form><br><br>
	${error}<br>
	
	<a href="login">LogIn</a>
</body>
</html>