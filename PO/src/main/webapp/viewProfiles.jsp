<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>

 <c:if test="${not empty student}">
<table>
<tr>
<th>userid</th>
<th>collegeID</th>
<th>codeforces rating</th>
<th>codeforces Rank</th>
<th>codechef rating</th>
<th>codechef stars</th>
<th>Leetcode problems solvd</th>
<th>spoj rank</th>
<th>spoj points</th>
<th>interviewbit rank</th>
<th>interviewbit score</th>
</tr>
<c:set var="count" value="0" scope="page" />

<c:forEach var="p" items="${student}">

<tr>
    <td>${p.userID}</td>
    <td>${p.collegeID}</td>
    
    <c:forEach var="cf" items="${codeforces}">   
    	<td>${cf[count]}</td>
    
    </c:forEach>
    
    <c:forEach var="cf" items="${codechef}">   
    	<td>${cf[count]}</td>
    
    </c:forEach>
    <c:forEach var="cf" items="${leetcode}">   
    	<td>${cf[count]}</td>
    
    </c:forEach>
    <c:forEach var="cf" items="${spoj}">   
    	<td>${cf[count]}</td>
    
    </c:forEach>
    <c:forEach var="cf" items="${interviewbit}">   
    	<td>${cf[count]}</td>
    
    </c:forEach>
         
</tr>
    
    
    <c:set var="count" value="${count + 1}" scope="page"/> 
    
   </c:forEach>

</table>
  
   
  

 </c:if>
 <a href="/">back</a>
</body>
</html>