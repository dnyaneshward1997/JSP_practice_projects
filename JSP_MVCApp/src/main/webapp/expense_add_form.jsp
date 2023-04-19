<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Expense</title>
</head>
<body>
	<form action="expense_add.jsp" method="post">
		<div>
			<label> Id : </label><input type="number" name="uid"
				placeholder="enter Expense id">
		</div>
		<div>
			<label>Item : </label><input type="text" name="item"
				placeholder="enter Expense item">
		</div>
		<div>
			<label>Price : </label><input type="number" name="price"
				placeholder="enter Expense price">
		</div>
		<div>
			<label>Quantity : </label><input type="number" name="quantity"
				placeholder="enter Expense quantity">
		</div>
		<div>
			<label>Date : </label><input type="text" name="edate"
				placeholder="enter Expense date">
		</div>


		<button type="submit">Add Expense</button>

	</form>
</body>
</html>