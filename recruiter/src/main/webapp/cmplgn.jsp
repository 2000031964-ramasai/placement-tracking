<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./styles/cmplogin.css"/>
<title>Recruiter Login</title>
</head>
<body>
    	<navbar>
    		<ul class="nav-list">
    			<li class="nav-item"><a href="./main.jsp">IRP-RC</a></li>
    			<li class="nav-item"><a href="./stdlgn.jsp">Student</a></li>
    			<li class="nav-item"><a href="./cmplgn.jsp">Recruiter</a></li>
    			<li class="nav-item"><a href="">Placement Officer</a></li>
    			<li class="nav-item"><a href="">About Us</a></li>
    		</ul>
    	</navbar>
		<fieldset>
			<form action="reclogin" class="form-class">
				<div><input type="text" placeholder="username" name="username"/></div>
				<div><input type ="password" placeholder="password" name="pass"/></div>
				<div><input type="submit" value="Login" id="login-button"></div>
			</form>
		</fieldset>
</body>
</html>