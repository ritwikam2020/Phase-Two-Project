<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Setting Form Properties</title>
</head>
<body>  
<% String hidden = request.getParameter("identity") +"-"+request.getParameter("details");
%>
<jsp:useBean id="bookingDetails" class="bookings.bookingDetails" scope="session"></jsp:useBean>
        <jsp:setProperty property="name" name="bookingDetails" value="${param.name}"/>
        <jsp:setProperty property="address" name="bookingDetails" value="${param.address}"/>
        <jsp:setProperty property="age" name="bookingDetails" value="${param.age}"/>
        <jsp:setProperty property="mobile" name="bookingDetails" value="${param.mobile}"/>
        <jsp:setProperty property="email" name="bookingDetails" value="${param.email}"/>
        <jsp:setProperty property="identity" name="bookingDetails" value="<%=hidden %>"/>
        <jsp:setProperty property="country" name="bookingDetails" value="${param.country}"/>
        
        <c:redirect url = "reviewdetails.jsp"/>
</body>
</html>