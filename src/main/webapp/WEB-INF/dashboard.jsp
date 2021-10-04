    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container text-center">
    <h3>Here's your Omikuji</h3>
    <p>In <c:out value="${number}"></c:out> years, you will live in <c:out value="${city}"></c:out> with <c:out value="${person }"></c:out> as your roommate, <c:out value="${hobby }"></c:out> for a living. The next time you see a <c:out value="${creature }"></c:out> you will have good luck. Also, <c:out value="${nice }"></c:out></p> 
   
</div>
</body>
</html>