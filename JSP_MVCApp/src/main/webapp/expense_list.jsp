<%@page import="com.cdac.model.Expense"%>
<%@page import="java.util.List"%>
<%@page import="com.cdac.service.ExpenseServiceImpl"%>
<%@page import="com.cdac.model.ExpenseDaoImpl"%>
<%@page import="com.cdac.service.ExpenseService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
ExpenseService expenseService = new ExpenseServiceImpl();

List<Expense> expenses = expenseService.getAll(5);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense list</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>Item</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Date</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Expense expence : expenses) {
			%>

			<tr>
				<td><%=expence.getItem()%></td>
				<td><%=expence.getPrice()%></td>
				<td><%=expence.getQuantity()%></td>
				<td><%=expence.getEdate()%></td>
				<td><a href="expense_update_form.jsp?id=<%=expence.getId()%>">
						Update</a></td>
				<td><a href="expense_delete.jsp?id=<%=expence.getId()%>">
						Delete</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>