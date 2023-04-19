<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login form</title>
</head>
<body>
<form action="login.jsp">


<div>
<label>User name : </label><input type="text" name = "username" placeholder= "enter name">
</div>

<div>
<label>Password : </label><input type="text" name = "password" placeholder= "enter password">
</div>

<button type="submit">Login</button>

</form>

<a href="register_form.jsp">New User</a>
</body>
</html>