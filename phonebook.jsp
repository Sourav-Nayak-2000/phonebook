<%@page import="com.entity.Contact"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.contactDao"%>
<%@page import="com.conn.Dbconnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>phonebook</title>
<%@include  file="component/allCss.jsp"%>
<style>
.crd-ho:hover{
	
		background-color:gray;
		color:Lime;
}

</style>
</head>
<body>
<%@include file="component/navbar.jsp" %>

	<%
	
	contactDao dao=new contactDao(Dbconnect.getCon());
	List<Contact> contact=dao.getAllContact(user.getId());
	
	%>
	
<div class="container mt-3">
<table class="table table-bordered table-;ight">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">NAME</th>
      <th scope="col">CONTACT NO</th>
      <th scope="col">EMAIL</th>
      <th scope="col">ACTION</th>
    </tr>
  </thead>
  <tbody>
	<%
	String name=(String)request.getParameter("name");
	System.out.println(name);
		for(Contact c:contact){
			if(name.equalsIgnoreCase(c.getName()))
			{
				%>
				
				
				
	<tr>
      <th scope="row"><%=c.getId() %></th>
      <td><%=c.getName() %></td>
      <td><%=c.getPhone() %></td>
      <td><%=c.getEmail() %></td>
      <td><button class="btn btn-success">SHARE</button></td>
    </tr>
				
				
			<% }
	}
	
	%>	
	
	</div>	 
 
		
<div class="container">
<table class="table table-bordered table-dark">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">NAME</th>
      <th scope="col">CONTACT NO</th>
      <th scope="col">EMAIL</th>
    </tr>
  </thead>
  <tbody>
  <%
  for(Contact c:contact)
  {
	%>
	
	<tr>
      <th scope="row"><%=c.getId() %></th>
      <td><%=c.getName() %></td>
      <td><%=c.getPhone() %></td>
      <td><%=c.getEmail() %></td>
    </tr>
	  
 <% }
  
  %>
    
  </tbody>
</table>
</div>	
	
	
	

</body>
</html>