<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register form</title>
</head>
<body>
<form action="register.jsp">
<div>
<label>User name : </label><input type="text" name = "username" placeholder= "enter name">
</div>

<div>
<label>Password : </label><input type="text" name = "password" placeholder= "enter password">
</div>

<button type="submit">Register</button>

</form>

<a href="login_form.jsp">Back to login page</a>
</body>
</html>