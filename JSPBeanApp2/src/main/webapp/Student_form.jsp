<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student form</title>
</head>
<body>
	<form action="student_add.jsp" method="post">
		<div>
			<label>Student Id : </label><input type="number" name="stdId"
				placeholder="enter student id">
		</div>
		<div>
			<label>Student Name : </label><input type="text" name="stdName"
				placeholder="enter student name">
		</div>
		<div>
			<label>Student Mobile number : </label><input type="number"
				name="stdMobNumber" placeholder="enter student mobile number">
		</div>
		<button type="submit">Add student</button>
	</form>
</body>
</html>