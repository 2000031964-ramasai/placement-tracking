<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="uptdProfile">
    User id<input type="text" placeholder="username"
					value="${loggedInUser_userName}" name="userID"
					/>
    Name<input type="text" name="name" value="${profile.name}">
    Gender<input type="text" name="gender" value="${profile.gender}">
    CollegeID<input type="text" name="collegeID" value="${profile.collegeID}">
    Branch<input type="text" name="branch" value="${profile.branch}" >
    Specialization<input type="text" name="specilization" value="${profile.specilization}">
    PassingOUtYear<input type="text" name="passingOutYear" value="${profile.passingOutYear}">
    CGPA<input type="text" name="cGPA" value="${profile.cGPA}" >
    LinkedIn<input type="text" name="linkedinUrl" value="${profile.linkedinUrl}">
    GitHub<input type="text" name="githubUrl" value="${profile.githubUrl}">
    Stopstalk<input type="text" name="stopstalkUrl" value="${profile.stopstalkUrl}">
    CollegeName<input type="text" name="collegeName" value="${profile.collegeName}">
    
    Codeforces<input type="text" value="${profile.codeforces}" name="codeforces">
    Codechef<input type="text" value="${profile.codechef}" name="codechef">
    Leetcode<input type="text" value="${profile.leetcode}" name="leetcode">
    Interview Bit<input type="text" value="${profile.interviewBit}" name="interviewBit">
    Spoj<input type="text" value="${profile.spoj}"  name="spoj">
    Password<input type="password" name="password" value="${profile.password}" >
    <input type="submit" value="Update" id="login-button">
   
   </form>
</body>
</html>