<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>

 <c:if test="${not empty student}">
<table>
<tr>
<th>Student ID</th>
<th>Student NAME</th>
<th>Student COST</th>
</tr>

<c:forEach var="p" items="${student}">
<tr>
    <td>${p.userID}</td>
    <td>${p.collegeID}</td>
    <td>${p.gender}</td>
    </tr>
   </c:forEach>


</table>
  
   
  

 </c:if>
 <a href="/">back</a>
</body>
</html>