<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login Page</title>
</head>
<body background='https://www.maketecheasier.com/assets/uploads/2021/05/how-to-enable-standard-users-to-run-a-program-with-admin-rights-featured-800x400.jpg.webp' style="background-repeat:no-repeat; background-size: 100% 100vh">
<%
  if (request.getParameter("error") != null)
          out.println("<b>Your session has expired or is invalid.</b><br>");
%>
<h2 style= "color: blue; font-family:verdana">Enter Admin details:</h2>
<c:if test="${param.login ==1}">
<h4 style= "color: red;">Incorrect email or password</h4>
</c:if>
<c:if test="${param.update ==1}">
<h4 style= "color: blue;">Login with new password</h4>
</c:if>
<h4 style= "color: white;">
<form action="VerifyAdminLogin.jsp" method="post">
  Email <input name="email" id="email" maxlength=40><br>
  Password <input type="password" name="password" id="password" maxlength="40"><br>
  <button>Login</button>
</form>
</h4>
</body>
</html>