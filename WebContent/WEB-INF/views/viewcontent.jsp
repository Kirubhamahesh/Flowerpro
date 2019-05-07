<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  
     
       <%@ page import="java.io.*" %>
     <%@ page import="java.util.*" %>
     
      <%@ page import="com.kce.model.*" %>
      
     
     
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>




  <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet"> 


 <link href="https://fonts.googleapis.com/css?family=Play" rel="stylesheet"> 
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <style>
   

  
 
   
  </style>
</head>
<body style="background-color:#f5f6fa  ">

	<h2 style="margin-top:80px; margin-left:320px;">Welcome to flowers world</h2>
<%
    ArrayList<Flower> ob = (ArrayList<Flower>)request.getAttribute("ob");
   %>
		<table class="table table-hover" style="width:500px; margin-top:80px; margin-left:300px;  border:2px solid black;">
   
    <tbody>
		<th>username</th>
		<th>email</th>
		
		
		<%
		
		for(Flower temp: ob)
		{
			%>
			<tr>
			<td><%= temp.getName() %> </td>
			<td><%= temp.getColor() %> </td>
			</tr>
			
		<%  }
		
		%>
		
		</tbody>
		</table>
</body>




</html>