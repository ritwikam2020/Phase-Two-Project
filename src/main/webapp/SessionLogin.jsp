<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Session Login</title>
</head>
<body background='https://www.travelandleisure.com/thmb/1MiwSCdmntdHMJtxXMdb56kUcTo=/650x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/flight-landing-INBNDCHECK1117-bbcbdbdd91f7480693283cd88393b3ff.jpg' style="background-repeat:no-repeat; background-size: 100% 100vh">
<%
  if (request.getParameter("error") != null)
          out.println("<b>Your session has expired or is invalid.</b><br>");
%>
<h1 style= "color: DarkRed; font-family:verdana">Welcome to the FlyAway Portal</h1>
<h2 style= "color: Yellow; font-family:verdana">Select a desired Login type:</h2>
<h4><a href="Userlogin.jsp">User Login Here</a></h4>
<h4><a href="AdminLogin.jsp">Admin Login Here</a></h4>
</body>
</html>