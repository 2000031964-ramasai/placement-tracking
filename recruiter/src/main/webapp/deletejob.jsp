<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./styles/delete-job.css" />
<title>Recruiter - Delete Job</title>
</head>
<body>
	<navbar>
	<ul class="nav-list">
		<li class="nav-item"><a href="">IRP-RC</a></li>
		<li class="nav-item"><a href="./recindex.jsp">Go back</a></li>
	</ul>
	</navbar>
	<fieldset>
		<form action="deleteJob" class="form-class">
		<div>
				<input type="text" placeholder="Job ID" name="jobid" />
			</div>

			<div>
				<input type="submit" value="Add" id="login-button">
			</div>
		</form>
	</fieldset>
</body>
</html>