<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Work Page</title>
</head>
<body>
<%
String employee_id = (String)request.getParameter("esin");
%>
	<h3>Welcome,<%=employee_id%></h3>
	<br>
	<button onclick="location.href='check_in.jsp'">check in</button>
	<br>
	<button onclick="location.href='renting.jsp'">rent</button>
</body>
</html>