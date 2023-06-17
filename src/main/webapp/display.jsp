<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Display Page</title>
</head>
<body>
	

   <%--  <c:forEach var="student" items="${students}">
        Name: ${student.name}<br>
        Roll No: ${student.rollNo}<br><br>
    </c:forEach> --%>
    
    <c:set var="str" value="Ankush's learning"/>
    
    <%-- Length : ${fn: length(str)} --%>
    
   	<%-- <c:forEach items="${fn:split(str, ' ')}" var="s">
   		<br>
   		${s }
   	</c:forEach> --%>
   	
   	<br>
   	index : ${fn: indexOf(str, "learning")}
   	<br>
   	isPresent : ${fn: contains(str, "lea")}
   	<br>
   	${fn: toUpperCase(str)}

</body>
</html>
