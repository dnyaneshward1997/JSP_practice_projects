<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee form</title>
</head>
<body>
	<form action="employee_add.jsp" method="post">
		<div>
			<label>Employee Id : </label><input type="number" name="empId"
				placeholder="enter employee id">
		</div>

		<div>
			<label>Employee Name : </label><input type="text" name="empName"
				placeholder="enter employee name">
		</div>

		<div>
			<label>Employee Salary : </label><input type="number" name="empSal"
				placeholder="enter employee salary">
		</div>

		<button type="submit">Add Employee</button>
	</form>
</body>
</html>