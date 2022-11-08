<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./styles/stulogin.css"/>
<title>Student Login</title>
</head>
<body>
    	<navbar>
    		<ul class="nav-list">
    			<li class="nav-item"><a href="./main.jsp">IRP-RC</a></li>
    			<li class="nav-item"><a href="./stdlgn.jsp">Student</a></li>
    			<li class="nav-item"><a href="http://localhost:9091/cmplgn.jsp">Recruiter</a></li>
    			<li class="nav-item"><a href="http://http://localhost:9090/mainindex.jsp">Placement Officer</a></li>
    			<li class="nav-item"><a href="">About Us</a></li>
    		</ul>
    	</navbar>
    		<fieldset>
				<form action="studentlogincheck" class="form-class">
					<div><input type="text" placeholder="ID" name="userID"/></div>
					<div><input type ="password" placeholder="***" name="password"/></div>
					<div><input type="submit" value="Login" id="login-button"></div>
					<div>Don't have an account? <a href="stdreg.jsp">Register</a></div>
				</form>
			</fieldset>
</body>
</html>