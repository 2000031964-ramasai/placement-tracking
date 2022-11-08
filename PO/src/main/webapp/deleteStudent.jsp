<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./styles/del-stu.css" />
<title>PO - Delete student</title>
</head>
<body>
	<navbar>
		<ul class="nav-list">
			<li class="nav-item"><a href="#">IRP-RC</a></li>
			<li class="nav-item"><a href="./polgnsuccess.jsp">Go back</a></li>
		</ul>
	</navbar>
	<fieldset>
		<legend>Delete Student</legend>
		<form action="deleteStudent" class="form-class">
			<div>
				<input type="text" placeholder="username" name="userID" />
			</div>
			<div>
				<input type="submit" value="Delete" id="login-button">
			</div>
		</form>
	</fieldset>
</body>
</html>