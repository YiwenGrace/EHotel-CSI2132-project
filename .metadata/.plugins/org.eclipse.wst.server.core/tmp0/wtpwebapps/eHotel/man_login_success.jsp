<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Work Page</title>
</head>
<body>
<%
String manager_id = (String)request.getParameter("msin");
%>
	<h3>Welcome,<%=manager_id%></h3>
	<br>
	<button onclick="location.href='check_in.jsp'">check in</button>
	<br>
	<button onclick="location.href='renting.jsp'">rent</button>
	<br>
	<button onclick="location.href='insert_emp.jsp'">add employee</button>
	<br>
	<button onclick="location.href='delete_emp.jsp'">delete employee</button>

</body>
</html>