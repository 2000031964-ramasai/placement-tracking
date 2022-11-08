<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.sdp.entity.JobOffers"%>

<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./styles/apply-jobs.css" />
<title>Apply Job</title>
</head>
<body>
	<navbar>
	<ul class="nav-list">
		<li class="nav-item"><a href="./main.jsp">IRP-RC</a></li>
		<li class="nav-item"><a href="./stdindex.jsp">Go back</a></li>
	</ul>
	</navbar>
	<div class="main-content">
		<div style="text-align: center; font-weight: bold; font-size: large;">Job's Available to apply</div>
		<%
	List<JobOffers> l = (List) request.getAttribute("list");
	%>
		<%
		for (JobOffers p : l) {
		%>
		<form action="applyJobController">
			<fieldset class="f-class">
				<legend>JOB <%=p.getJobid()%></legend>
				<input type="hidden" name="userID" value="${loggedInUser_userName}"> 
				<input type="hidden" name="jobid" value=<%=p.getJobid()%>>
				<div>
					Description:
					<%=p.getDescription()%></div>
				<div>
					Recruiter:
					<%=p.getPostedbyusername()%></div>
				<div>
					Responsibility:
					<%=p.getResponsibilities()%></div>
				<div>
					Qualification:
					<%=p.getQualification()%></div>
				<div>
					Location:
					<%=p.getLocation()%></div>
				<div>
					<input type="submit" value="Submit" id="button">
				</div>
			</fieldset>
		</form>
		<%
		}
		%>
	</div>
</body>
</html>