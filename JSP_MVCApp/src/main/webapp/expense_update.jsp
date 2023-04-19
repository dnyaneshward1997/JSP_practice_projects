<%@page import="com.cdac.service.ExpenseServiceImpl"%>
<%@page import="com.cdac.service.ExpenseService"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:useBean id="expense" class="com.cdac.model.Expense"></jsp:useBean>
<jsp:setProperty property="*" name="expense" />

<%
ExpenseService expenseService = new ExpenseServiceImpl();
expenseService.modify(expense);

response.sendRedirect("expense_list.jsp");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Expense</title>
</head>
<body>

</body>
</html>