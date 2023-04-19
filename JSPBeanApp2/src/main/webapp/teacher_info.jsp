<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="teacher" class="com.model.Teacher" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher information</title>
</head>
<body>
<h3><jsp:getProperty name="teacher" property="id" /></h3>
<h3><jsp:getProperty name="teacher" property="name" /></h3>
<h3><jsp:getProperty name="teacher" property="salary" /></h3>
</body>
</html>