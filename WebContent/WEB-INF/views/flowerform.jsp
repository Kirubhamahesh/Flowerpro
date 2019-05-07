<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <h2>Flower form</h2>
	 
	 <fieldset style="margin:200px; width:400px; padding :50px; margin-left:300px;">
	
	<form:form action="flower" modelAttribute="ob" method="get">
	
	<h4>flower name</h4>
	<input type="text" name="name">
	
	<h4>flower color</h4>
	<input type="text" name="color">
	
	<input type="submit">
	
	</form:form>
	
	
	
	
	</fieldset>
</body>
</html>