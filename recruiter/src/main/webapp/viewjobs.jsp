<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<center><h2>View Jobs</h2></center>


 <c:if test="${not empty joboffers}">
 <c:set var = "uname" scope = "application" value = "${uname}"/>
 <c:out value='${uname}'/>
<table>
<tr>
<th>JOb ID</th>
<th>Job Location</th>
<th>Job Responsibilities</th>
<th>Job Description</th>
<th>Job Qualification</th>
<th>Job Recruiter</th>
</tr>

<c:forEach var="p" items="${joboffers}">

<c:if test="${p.postedbyusername == uname}">
<tr>
    <td>${p.jobid}</td>
    <td>${p.location}</td>
    <td>${p.responsibilities}</td>
    <td>${p.description}</td>
    <td>${p.qualification}</td>
    <td>${p.postedbyusername}</td>
    <td>${p.lastDate}</td>
    <form action="getAppliedStudents">
    <input type="hidden" name="jobid" value="${p.jobid }">
     <input type="hidden" name="uname" value="${p.postedbyusername}">
    
    <td><input type="submit"></td>
    </form>
    </tr>
    

 </c:if>
   </c:forEach>


</table>
  
   
  

 </c:if>


<a href="/recindex.jsp">go back</a>
</body>
</html>