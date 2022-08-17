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
<title>Payment</title>
</head>
<body background='https://eli-deal.com/wp-content/uploads/2021/12/payment-gateway.png' style="background-repeat:no-repeat; background-size: 100% 100vh"> 
<jsp:useBean id="bookingDetails" class="bookings.bookingDetails" scope="session"></jsp:useBean>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/flight_booking"  
     user="root"  password="root"/> 
<sql:update dataSource="${db}" var="count">  
INSERT INTO registerDetails VALUES ('${bookingDetails.name}','${bookingDetails.address}',${bookingDetails.age},'${bookingDetails.mobile}','${bookingDetails.email}','${bookingDetails.identity}','${bookingDetails.country}');
</sql:update>

<h1 style= "color: blue;">Click on the Pay button to continue Payment </h1>
<a href="confirmation.jsp"><button style="height:50px; width:150px;"><img src="https://img.favpng.com/9/12/4/digital-marketing-pay-per-click-advertising-search-engine-optimization-png-favpng-KPpMkacKpNWJtmZ76qipJGC7u.jpg" height ="30" width="50" />Pay <c:out value="${param.price}"/></button></a>
</body>
</html>