<%@page import="com.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student information</title>
</head>
<body>
<%

Student student = (Student)session.getAttribute("s");
 
%>

<h2><%= student.getStdId() %></h2>
<h2><%= student.getStdName() %></h2>
<h2><%= student.getMobNumber() %></h2>
</body>
</html>