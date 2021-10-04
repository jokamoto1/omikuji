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
    <h3>Omikuji</h3>
    <form action="formAction" method="post" class=" d-flex flex-column w-50 m-auto">
        <label>Pick any number from 5 to 25:</label>
        <input type="number" name="number">
        <label>Enter the name of any city:</label>
        <input type="text" name="city">
        <label>Enter the name of any real person:</label>
        <input type="text" name="person">
        <label>Enter professional endeavor or hobby:</label>
        <input type="text" name="hobby">
        <label>Enter any type of living:</label>
        <input type="text" name="creature">
        <label>Say something nice to someone:</label>
        <input type="text" name="nice">
        <p>Send and show a friend</p>
        <input type="submit">
    </form>
</div>
</body>
</html>