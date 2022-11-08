<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<spring:url value="./styles/index.css" var="indCss"/>
<link rel="stylesheet" type="text/css" href="./styles/cmp.css"/>
<title>Recruiter Page</title>
</head>
<body>
    	<navbar>
    		<ul class="nav-list">
    			<li class="nav-item"><a href="./recindex.jsp">IRP-RC</a></li>
    			<li class="nav-item"><span>Logged in as: ${loggedInUser_userName}</span></li>
    			<li class="nav-item"><a href="${pageContext.servletContext.contextPath}/logout">Logout</a></li>
    		</ul>
    	</navbar>
    	<fieldset>
    		<div class="flex-item"><input type="button" value="Profile"  onclick="window.location='cmpprof.jsp'"/></div>
    		<div class="flex-item"><input type="button" value="jobs" onclick="window.location='addjob.jsp'"/></div>
    		<div class="flex-item"><a href="viewjobs" id="flex-a-id">view jobs</a></div>
    		<div class="flex-item"><input type="button" value="Delete Job" onclick="window.location='deletejob.jsp'"/></div>
    	</fieldset>
</body>
</html>