<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./styles/po-success.css" />
<title>PO Home</title>
</head>
<body>
	<navbar>
	<ul class="nav-list">
		<li class="nav-item"><a href="./polgnsuccess.jsp">IRP-RC</a></li>
		<li class="nav-item"><a href="./pomain.jsp">Logout</a></li>
	</ul>
	</navbar>
	<div class="main-content">
		<fieldset>
			<legend>Recruiter operations</legend>
			<a href="./addRecruiter.jsp">Add Recruiter</a><br>
			<a href="./delRec.jsp">Delete Recruiter</a>
		</fieldset>
		<fieldset>
			<legend>Student operations</legend>
			<a href="./addStudent.jsp">Add Student</a><br>
			<a href="./deleteStudent.jsp">Delete Student</a>
			<a href="viewStudents">view Student</a>
			<a href="viewProfiles">view Profiles</a>
		</fieldset>
	</div>
</body>
</html>