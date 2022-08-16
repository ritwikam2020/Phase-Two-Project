<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*, com.mysql.jdbc.Driver"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="bookingDetails" class="bookings.bookingDetails" scope="session"></jsp:useBean>
<h2 style= "color: blue;">Passenger Details are as follows </h2>
        name:    <jsp:getProperty name="bookingDetails" property="name" />  <br>
        address:    <jsp:getProperty name="bookingDetails" property="address" />  <br>
        age:    <jsp:getProperty name="bookingDetails" property="age" />  <br>
        mobile:    <jsp:getProperty name="bookingDetails" property="mobile" />  <br>
        email:    <jsp:getProperty name="bookingDetails" property="email" />  <br>
        identity:    <jsp:getProperty name="bookingDetails" property="identity" />  <br>
        country:    <jsp:getProperty name="bookingDetails" property="country" />  <br>
        flightno:    <jsp:getProperty name="bookingDetails" property="flightNo" />  <br>
        no of people:    <jsp:getProperty name="bookingDetails" property="people" />  <br>
<h2 style= "color: blue;">Flight Details are as follows </h2>
<!-- sql:setDataSource tag -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/flight_booking"  
     user="root"  password="root"/> 
     <sql:query dataSource="${db}" var="rs">  
	SELECT * from flightdetails;  
</sql:query>
<c:forEach var="rows" items="${rs.rows}"> 
<c:if test="${rows.flight_no == bookingDetails.flightNo}">
   <p>Airline Name- <c:out value="${rows.airline_name}"/><br>
   Price- <c:out value="${rows.price}"/><br>
   Flight No- <c:out value="${rows.flight_no}"/><br>
   Source City- <c:out value="${rows.source_city}"/><br>
   Destination City- <c:out value="${rows.dest_city}"/><br>
   Departure Time- <c:out value="${rows.dept_time}"/><br>
   Arrival Time- <c:out value="${rows.arrival_time}"/><br>
   Date Of Travel- <c:out value="${rows.date_of_travel}"/><br>
   Flight Class- <c:out value="${rows.flight_class}"/><br>
    <c:set var="result" value="${rows.price * bookingDetails.people}"/>
   </p>  
</c:if> 
</c:forEach>
payment information - <c:out value="${result}"/>
        <h4 style= "color: red;">If all the above details are correct please continue or edit </h4>
<a href="registerdetails.jsp"><button>Edit</button></a>             <a href="Payment.jsp?price=${result}"><button>Pay</button></a>
</body>
</html>