<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher form</title>
</head>
<body>
	<form action="teacher_add.jsp" method="post">
		<div>
			<label>Teacher Id : </label><input type="number" name="id">
		</div>
		<div>
			<label>Teacher name : </label><input type="text" name="name">
		</div>
		<div>
			<label>Teacher salary : </label><input type="number"
				name="salary">
		</div>

		<button type="submit">Add Teacher</button>

	</form>
</body>
</html>