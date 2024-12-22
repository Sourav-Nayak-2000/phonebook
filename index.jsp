<%@page import="com.entity.User"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.conn.Dbconnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Phonebook</title> 
<%@include  file="component/allCss.jsp"%>
<style>
.back-img{
	background-image:url("img/back.jpg");
	width:100%;
	height:80vh;
	
}
</style>
</head>
<body style="background-color:#4e72f5;">
	<%@include file="component/navbar.jsp" %>
	
	
	<%
		User us=(User)session.getAttribute("success");
	%>
	<div class="container-fluid back-img text-center text-success">
		<div>
			<h1>Welcome to PhoneBook APP</h1>
		</div>
	
	</div>
	<div style="margin-top: 30px">
	<%@include file="component/footer.jsp" %>
</div>
</body>
</html>