<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./styles/stureg.css"/>
<title>Student Registration</title>
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
			<form action="studentreg" class="form-class">
				<div><input type="text" placeholder="ID" name="userID"/></div>
				<div><input type ="password" placeholder="***" name="password"/></div>
				<div><input type="text" placeholder="gender" name="gender"/><br></div>
				<div><input type="text" placeholder="special roll no in clg" name="collegeID"/></div>
				<div><input type="text" placeholder="clg name" name="collegeName"/></div>
				<div><input type="submit" value="reg" id="reg-button"></div>
				<div>Have an account? <a href="stdlgn.jsp">Login</a></div>
			</form>
		</fieldset>
</body>
</html>