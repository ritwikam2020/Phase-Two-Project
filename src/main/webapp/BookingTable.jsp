<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*, com.mysql.jdbc.Driver"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/flight_booking"  
     user="root"  password="root"/> 
     <sql:query dataSource="${db}" var="rs">  
	SELECT * from bookingTable;  
</sql:query>
<table border="2" width="100%">  
<tr>  
<th>Booking ID</th>  
<th>Email</th>  
<th>Flight No</th>   
</tr>
	<c:forEach var="booking" items="${rs.rows}"> 
	<c:if test="${booking.email == param.email}">
	   <p>
	   <tr>
	   		<td><c:out value="${booking.booking_id}"/></td>  
			<td><c:out value="${booking.email}"/></td>    
			<td><c:out value="${booking.flight}"/></td>
		</tr>
	   </p>  
	</c:if> 
	</c:forEach>
	<a href="AdminPage.jsp"><button>Back to Admin Page</button></a>
</body>
</html>