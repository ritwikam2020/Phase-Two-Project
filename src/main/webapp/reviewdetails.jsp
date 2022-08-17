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
<title>Review Details Page</title>
</head>
<body background='https://www.travelandleisure.com/thmb/1MiwSCdmntdHMJtxXMdb56kUcTo=/650x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/flight-landing-INBNDCHECK1117-bbcbdbdd91f7480693283cd88393b3ff.jpg' style="background-repeat:no-repeat; background-size: 100% 100vh">
<jsp:useBean id="bookingDetails" class="bookings.bookingDetails" scope="session"></jsp:useBean>
<h2 style= "color: DarkRed;">Passenger Details are as follows </h2>
<h3>
        Name:    <span style="color:Khaki;"><jsp:getProperty name="bookingDetails" property="name" /> </span>  <br>
        Address:    <span style="color:Khaki;"><jsp:getProperty name="bookingDetails" property="address" /></span>  <br>
        Age:    <span style="color:Khaki;"><jsp:getProperty name="bookingDetails" property="age" /></span>  <br>
        Mobile:    <span style="color:Khaki;"><jsp:getProperty name="bookingDetails" property="mobile" /></span>  <br>
        Email:    <span style="color:Khaki;"><jsp:getProperty name="bookingDetails" property="email" /></span>  <br>
        Identity:    <span style="color:Khaki;"><jsp:getProperty name="bookingDetails" property="identity" /></span>  <br>
        Country:    <span style="color:Khaki;"><jsp:getProperty name="bookingDetails" property="country" /></span>  <br>
        </h3>
<h2 style= "color: DarkRed;">Flight Details are as follows </h2>
<!-- sql:setDataSource tag -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/flight_booking"  
     user="root"  password="root"/> 
     <sql:query dataSource="${db}" var="rs">  
	SELECT * from flightdetails;  
</sql:query>
<c:forEach var="rows" items="${rs.rows}"> 
<c:if test="${rows.flight_no == bookingDetails.flightNo}">
   <p><h3>Airline Name- <span style="color:Khaki;"><c:out value="${rows.airline_name}"/></span><br>
   Price- <span style="color:Khaki;"><c:out value="${rows.price}"/></span><br>
   Flight No- <span style="color:Khaki;"><c:out value="${rows.flight_no}"/></span><br>
   Source City- <span style="color:Khaki;"><c:out value="${rows.source_city}"/></span><br>
   Destination City- <span style="color:Khaki;"><c:out value="${rows.dest_city}"/></span><br>
   Departure Time- <span style="color:Khaki;"><c:out value="${rows.dept_time}"/></span><br>
   Arrival Time- <span style="color:Khaki;"><c:out value="${rows.arrival_time}"/></span><br>
   Date Of Travel- <span style="color:Khaki;"><c:out value="${rows.date_of_travel}"/></span><br>
   Flight Class- <span style="color:Khaki;"><c:out value="${rows.flight_class}"/></span><br>
    <c:set var="result" value="${rows.price * bookingDetails.people}"/></span></h3>
   </p>  
</c:if> 
</c:forEach>
        <h4 style= "color: green;">If all the above details are correct please continue or edit </h4>
<a href="registerdetails.jsp"><button>Edit</button></a>             <a href="Payment.jsp?price=${result}"><button>Pay</button></a>
</body>
</html>