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
<jsp:useBean id="bookingDetails" class="bookings.bookingDetails" scope="session"></jsp:useBean>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/flight_booking"  
     user="root"  password="root"/> 
<sql:update dataSource="${db}" var="count">  
INSERT INTO registerDetails VALUES ('${bookingDetails.name}','${bookingDetails.address}',${bookingDetails.age},'${bookingDetails.mobile}','${bookingDetails.email}','${bookingDetails.identity}','${bookingDetails.country}');
</sql:update>
<h1 style= "color: blue;">Click on the Pay button to continue Payment </h1>
Total Amount- <c:out value="${param.price}"/><br>
<a href="confirmation.jsp"><button>Pay</button></a>
</body>
</html>