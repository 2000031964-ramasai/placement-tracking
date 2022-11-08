<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./styles/add-stu.css" />
<title>PO - Add Student</title>
</head>
<body>
	<navbar>
	<ul class="nav-list">
		<li class="nav-item"><a href="#">IRP-RC</a></li>
		<li class="nav-item"><a href="./polgnsuccess.jsp">Go back</a></li>
	</ul>
	</navbar>
	<fieldset>
	<legend>Add Student</legend>
	<form action="addStudent" class="form-class">
		<div>
			<input type="text" placeholder="user ID" name="userID" />
		</div>
		<div>
			<input type="password" placeholder="password" name="password" />
		</div>
		<div>
			<input type="text" placeholder="gender" name="gender" />
		</div>
		<div>
			<input type="text" placeholder="college ID" name="collegeID" />
		</div>
		<div>
			<input type="text" placeholder="college name" name="collegeName" />
		</div>
		<div>
			<input type="submit" value="Add" id="login-button">
		</div>
	</form>
	</fieldset>
</body>
</html>