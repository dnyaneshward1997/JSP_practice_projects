<%@page import="com.cdac.service.ExpenseServiceImpl"%>
<%@page import="com.cdac.service.ExpenseService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete Expense</title>
</head>
<body>
<%

String p1 = request.getParameter("id");
int id = Integer.parseInt(p1);

ExpenseService expenseService = new ExpenseServiceImpl();
expenseService.removeById(id);

response.sendRedirect("expense_list.jsp");

%>
</body>
</html>