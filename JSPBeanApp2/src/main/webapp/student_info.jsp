<%@page import="com.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="student" class="com.model.Student" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student information</title>
</head>
<body>

<h2><jsp:getProperty name="student" property="stdId" /></h2>
<h2><jsp:getProperty name="student" property="stdName" /></h2>
<h2><jsp:getProperty name="student" property="mobNumber" /></h2>

</body>
</html>