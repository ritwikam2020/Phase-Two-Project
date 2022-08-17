<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login Page</title>
</head>
<body background='https://www.travelandleisure.com/thmb/1MiwSCdmntdHMJtxXMdb56kUcTo=/650x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/flight-landing-INBNDCHECK1117-bbcbdbdd91f7480693283cd88393b3ff.jpg' style="background-repeat:no-repeat; background-size: 100% 100vh">
<%
  if (request.getParameter("error") != null)
          out.println("<b>Your session has expired or is invalid.</b><br>");
%>
<h2 style= "color: Yellow; font-family:verdana">Enter the Login details:</h2>
<c:if test="${param.login ==1}">
<h4 style= "color: red;">Incorrect email or password</h4>
</c:if>
<h4> 
 <form action="verifyUserLogin.jsp" method="post">
  Email <input name="email" id="email" maxlength=40><br>
  Password <input type="password" name="password" id="password" maxlength="40"><br><br>
  <button style="height:30px; width:100px;">Login</button></h4>
  </h4>
</form>
</body>
</html>