<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rent Fee Payment</title>
</head>
<body>
<%
String renting_payment = (String)request.getParameter("renting_payment");
%>
	<h3>Please confirm the payment: <%=renting_payment%></h3>
	<button onclick="location.href='renting_success.jsp'">Submit</button>
</body>
</html>