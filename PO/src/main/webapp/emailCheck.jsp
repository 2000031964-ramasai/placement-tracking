<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./styles/email-check.css" />
<title>PO - Email Check</title>
</head>
<body>
	<navbar>
	<ul class="nav-list">
		<li class="nav-item"><a href="./pohome.jsp">IRP-RC</a></li>
		<li class="nav-item"><a href="">Student</a></li>
		<li class="nav-item"><a href="">Recruiter</a></li>
		<li class="nav-item"><a href="./emailCheck.jsp">Placement Officer</a></li>
		<li class="nav-item"><a href="">About Us</a></li>
	</ul>
	</navbar>
	<fieldset>
			<legend>Enter Email</legend>
			<form action="emailCheck" class="form-class">
				<div><input type="text" placeholder="email" name="poEmail"/></div>
				<div><input type="submit" value="Submit" id="login-button"></div>
			</form>
	</fieldset>
</body>
</html>