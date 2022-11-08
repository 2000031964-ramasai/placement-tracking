<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<center><h2>profile</h2></center>


 <c:if test="${not empty profile}">

<form>
    User ID<input type="text" value="${profile.userID}" disabled="disabled">
    Name<input type="text" value="${profile.name}" disabled="disabled">
    Gender<input type="text" value="${profile.gender}" disabled="disabled">
    CollegeID<input type="text" value="${profile.collegeID}" disabled="disabled">
    Branch<input type="text" value="${profile.branch}" disabled="disabled">
    Specialization<input type="text" value="${profile.specilization}" disabled="disabled">
    PassingOUtYear<input type="text" value="${profile.passingOutYear}" disabled="disabled">
    CGPA<input type="text" value="${profile.cGPA}" disabled="disabled">
    LinkedIn<input type="text" value="${profile.linkedinUrl}" disabled="disabled">
    GitHub<input type="text" value="${profile.githubUrl}" disabled="disabled">
    Stopstalk<input type="text" value="${profile.stopstalkUrl}" disabled="disabled">
    CollegeName<input type="text" value="${profile.collegeName}" disabled="disabled">
    Codeforces<input type="text" value="${profile.codeforces}" disabled="disabled">
    Codechef<input type="text" value="${profile.codechef}" disabled="disabled">
    Leetcode<input type="text" value="${profile.leetcode}" disabled="disabled">
    Interview Bit<input type="text" value="${profile.interviewBit}" disabled="disabled">
    Spoj<input type="text" value="${profile.spoj}" disabled="disabled">
    
   
   </form>
 </c:if>

<a href="/edit">Edit</a>
<a href="/stdindex.jsp">go back</a>
</body>
</html>