<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./styles/add-rec.css"/>
<title>PO - Add Recruiter</title>
</head>
<body>
	<navbar>
	<ul class="nav-list">
		<li class="nav-item"><a href="#">IRP-RC</a></li>
		<li class="nav-item"><a href="./polgnsuccess.jsp">Go back</a></li>
	</ul>
	</navbar>
		<fieldset>
		<legend>Add Recruiter</legend>
			<form action="addRec" class="form-class">
				<div><input type="text" placeholder="username" name="username"/></div>
				<div><input type ="text" placeholder="company name" name="companyName"/></div>
				<div><input type ="email" placeholder="email" name="email"/></div>
				<div><input type ="text" placeholder="phoneno" name="phoneno"/></div>
				<div><input type ="text" placeholder="location" name="location"/></div>
				<div><input type ="password" placeholder="password" name="password"/></div>
				<div><input type="submit" value="Add" id="login-button"></div>
			</form>
		</fieldset>
</body>
</html>