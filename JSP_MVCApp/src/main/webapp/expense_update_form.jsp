<%@page import="com.cdac.model.Expense"%>
<%@page import="com.cdac.service.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	
	String p1 = request.getParameter("id");
	int id = Integer.parseInt(p1);

	ExpenseService expenseService = new ExpenseServiceImpl();
	Expense expense = expenseService.getById(id);
	
	%>
	
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Expense</title>
</head>
<body>
	<form action="expense_update.jsp" method="post">
	<input type = "hidden" name="id" value="<%= expense.getId() %>">
		
		<div>
			<label>Item : </label><input type="text" name="item"
			value="<%= expense.getItem() %>">
		</div>
		<div>
			<label>Price : </label><input type="number" name="price"
				value="<%= expense.getPrice() %>">
		</div>
		<div>
			<label>Quantity : </label><input type="number" name="quantity"
				value="<%= expense.getQuantity()%>">
		</div>
		<div>
			<label>Date : </label><input type="text" name="edate"
			value="<%= expense.getEdate()%>">
		</div>


		<button type="submit">Update Expense</button>

	</form>
</body>
</html>