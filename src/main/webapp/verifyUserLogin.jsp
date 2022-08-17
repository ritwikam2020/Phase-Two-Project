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
<title>User Login Verification</title>
</head>
<body>
<!-- sql:setDataSource tag -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/flight_booking"  
     user="root"  password="root"/> 
     <sql:query dataSource="${db}" var="rs">  
	SELECT * from userLogin;  
</sql:query>
<%

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        if (email == null || email.equals("") || password == null || password.equals("")) {
                response.sendRedirect("sessionhandling.jsp?error=1");
        }
        
%>
<c:set var="email" value= "${param.email}"/>
<c:set var="pwd" value= "${param.password}"/>
<c:set var="flag" value= "${0}"/>
<c:forEach var="rows" items="${rs.rows}"> 
<c:if test="${rows.email_id == email && rows.password == pwd}">
   <p>verified <c:out value="${rows.email_id}"/>
   <c:set var="flag" value= "${1}"/>
   <c:redirect url = "searchflight.jsp"/>
   </p>  
</c:if> 
</c:forEach>
<c:if test="${flag ==0}">
<p>
<c:redirect url = "Userlogin.jsp?login=${1}"/>
</p>
</c:if>
</body>
</html>