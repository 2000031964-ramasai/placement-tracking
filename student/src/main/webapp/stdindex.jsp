<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./styles/stuhome.css" />
<title>Student Home</title>
</head>
<body>
  <navbar>
  <ul class="nav-list">
    <li class="nav-item"><a href="./main.jsp">IRP-RC</a></li>
    <li class="nav-item"><a href="/profile">Profile</a></li>
    <li class="nav-item">Logged in as: ${loggedInUser_userName}</li>
    <li class="nav-item"><a
      href="${pageContext.servletContext.contextPath}/logout1">Logout</a></li>
  </ul>
  </navbar>
  <div class="main-content">
    <a href="/applyjob">Apply for jobs</a> <a href="./updateStudentData.jsp">Update profile</a>
  </div>
</body>
</html>