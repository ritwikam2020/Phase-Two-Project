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
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/flight_booking"  
     user="root"  password="root"/> 
     <c:set var="eml" value="${param.email}"/>
     <c:set var="pass" value="${param.passwordNew}"/>
<sql:update dataSource="${db}" var="count">  
UPDATE adminLogin SET password = ? WHERE email_id = ?
		   <sql:param value="${pass}" />
		   <sql:param value="${eml}" />
</sql:update>
<c:redirect url = "AdminLogin.jsp"/>
</body>
</html>