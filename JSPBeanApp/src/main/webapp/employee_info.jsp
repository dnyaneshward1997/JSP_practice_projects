<%@page import="com.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee information</title>
</head>
<body>
<%
Employee emp  = (Employee)session.getAttribute("e");
 
%>

<h3><%= emp.getEmpId()%></h3>
<h3><%= emp.getEmpName()%></h3>
<h3><%= emp.getSalary()%></h3>
</body>
</html>