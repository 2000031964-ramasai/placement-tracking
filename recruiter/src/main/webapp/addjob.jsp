<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./styles/add-jobs.css" />
<title>Recruiter - Add Job</title>
</head>
<body>
	<navbar>
	<ul class="nav-list">
		<li class="nav-item"><a href="">IRP-RC</a></li>
		<li class="nav-item"><a href="./recindex.jsp">Go back</a></li>
	</ul>
	</navbar>
	<fieldset>
		<form action="addJob" class="form-class">
		<div>
				<input type="text" placeholder="Job ID" name="jobid" />
			</div>
			<div>
				<input type="text" placeholder="username"
					value="${loggedInUser_userName}" name="postuser"
					disabled="disabled" />
			</div>
			<div>
				<input type="text" placeholder="location" name="location" />
			</div>
			<div>
				<input type="text" placeholder="description" name="description" />
			</div>
			<div>
				<input type="text" placeholder="qualification" name="qualification" />
			</div>
			<div>
				<input type="text" placeholder="responsibilities"
					name="responsibilities" />
			</div>
			<div>
				<input type="text" placeholder="Last Date"
					name="lastDate" />
			</div>
			<div>
				<input type="submit" value="Add" id="login-button">
			</div>
		</form>
	</fieldset>
</body>
</html>