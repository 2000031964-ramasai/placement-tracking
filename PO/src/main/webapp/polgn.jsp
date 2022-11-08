<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./styles/po-login.css" />
<title>Student Login</title>
</head>
<body>
	<navbar>
	<ul class="nav-list">
		<li class="nav-item"><a href="">IRP-RC</a></li>
		<li class="nav-item"><a href="">Student</a></li>
		<li class="nav-item"><a href="">Recruiter</a></li>
		<li class="nav-item"><a href="./mainindex.jsp">Placement Officer</a></li>
		<li class="nav-item"><a href="">About Us</a></li>
	</ul>
	<fieldset>
		<form action="OTPcheck" class="form-class">
			<div>
				<input type="text" placeholder="OTP" name="OTP" />
			</div>
			<div>
				<input type="submit" value="Login" id="login-button">
			</div>
		</form>
	</fieldset>
</body>
</html>