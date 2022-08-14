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
<!-- sql:setDataSource tag -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/flight_booking"  
     user="root"  password="root"/> 
<c:set var="dot" value= "${param.dot}"/>
<c:set var="sourcecity" value= "${param.sourcecity}"/>
<c:set var="destcity" value= "${param.destcity}"/>
<c:set var="nop" value= "${param.nop}"/>
<sql:query dataSource="${db}" var="fd">  
	SELECT * from flightdetails;
</sql:query>
<table border="2" width="100%">  
<tr>  
<th>Airline name</th>  
<th>price</th>  
<th>Flight No</th>   
<th>Source City</th>  
<th>Destination City</th>  
<th>Departure Time</th> 
<th>Arrival City</th>  
<th>Total Seats</th>  
<th>Booked Seats</th>
<th>Available Seats</th>
<th>Date of Travel</th>
<th>Class</th>
</tr>
	<c:forEach var="flights" items="${fd.rows}"> 
	<c:if test="${flights.source_city == sourcecity && flights.dest_city == destcity && flights.date_of_travel== dot}">
	   <p>
	   <tr>
	   		<td><c:out value="${flights.airline_name}"/></td>  
			<td><c:out value="${flights.price}"/></td>  
			<td><a href="registerdetails.jsp" ><c:out value="${flights.flight_no}"/></a></td>
			<td><c:out value="${flights.source_city}"/></td>  
			<td><c:out value="${flights.dest_city}"/></td>  
			<td><c:out value="${flights.dept_time}"/></td>
			<td><c:out value="${flights.arrival_time}"/></td>  
			<td><c:out value="${flights.total_seats}"/></td>  
			<td><c:out value="${flights.booked_seats}"/></td>
			<td><c:out value="${flights.seat_availibility}"/></td>  
			<td><c:out value="${flights.date_of_travel}"/></td>  
			<td><c:out value="${flights.flight_class}"/></td>
		</tr>
	   </p>  
	</c:if> 
	</c:forEach>
</table>
<%-- 
you have entered
<c:out value="${dot}"/>
<c:out value="${sourcecity}"/>
<c:out value="${destcity}"/>
<c:out value="${nop}"/>
--%>
</body>
</html>