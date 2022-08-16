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
<c:if test="${param.flightno != null}">
   <p><jsp:useBean id="bookingDetails" class="bookings.bookingDetails" scope="application"></jsp:useBean>
        <jsp:setProperty property="flightNo" name="bookingDetails" value="${param.flightno}"/>
   </p>  
</c:if> 
<h2 style= "color: blue;">Please enter your personal details </h2>
<form action="SettingFormProperties.jsp">
  Full name <input name="name" id="name"><br>
  Address <input name="address" id="address"><br>
  Age <input name="age" id="age"><br>
  Mobile <input name="mobile" id="mobile"><br>
  Email <input name="email" id="email"><br>
  <label for="identity">Choose an Identity:</label>
	<select id="identity" name="identity">
	  <option value="Aadhar">Aadhar</option>
	  <option value="SSN">SSN</option>
	  <option value="Passport">Passport</option>
	  <option value="Driving License">Driving License</option>
	</select>Details <input name="details" id="details"><br>
Country <input name="country" id="country"><br>
  <button>Search</button>  
</form>
</body>
</html>