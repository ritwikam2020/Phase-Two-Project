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
<%
Random rand = new Random();
int n = rand.nextInt(1000000);
%>
<jsp:useBean id="bookingDetails" class="bookings.bookingDetails" scope="session"></jsp:useBean>
<h4 style= "color: green;">Dear,<c:out value="${bookingDetails.name}"/><br> </h4>
<h4 style= "color: blue;">Your Payment was successful, Thank you for choosing us </h4>
<h4 style= "color: blue;">Your booking id is: <c:out value="<%=n%>"/> </h4>
<h4 style= "color: blue;">Have a safe flight! </h4>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/flight_booking"  
     user="root"  password="root"/> 
<sql:update dataSource="${db}" var="count">  
INSERT INTO bookingTable VALUES ('<%=n%>','${bookingDetails.email}','${bookingDetails.flightNo}');
</sql:update>
</body>
</html>