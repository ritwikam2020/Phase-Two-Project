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
<title>Confirmation</title>
</head>
<body background='https://images.unsplash.com/photo-1606768666853-403c90a981ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80' style="background-repeat:no-repeat; background-size: 100% 100vh"> 
<%
Random rand = new Random();
int n = rand.nextInt(1000000);
%>
<jsp:useBean id="bookingDetails" class="bookings.bookingDetails" scope="session"></jsp:useBean>
<h2 style= "color: white;">Dear,<c:out value="${bookingDetails.name}"/><br> </h2>
<h2 style= "color: white;">Your Payment was successful, Your booking id is: <span style="color:red;"><c:out value="<%=n%>"/></span></h2>
<h2 style= "color: white;">Thank you for choosing us! </h2>
<h2 style= "color: white;">Have a safe flight! </h2>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/flight_booking"  
     user="root"  password="root"/> 
<sql:update dataSource="${db}" var="count">  
INSERT INTO bookingTable VALUES ('<%=n%>','${bookingDetails.email}','${bookingDetails.flightNo}');
</sql:update>
</body>
</html>