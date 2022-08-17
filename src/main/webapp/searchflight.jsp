<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Flight Page</title>
</head>
<body background='https://www.travelandleisure.com/thmb/1MiwSCdmntdHMJtxXMdb56kUcTo=/650x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/flight-landing-INBNDCHECK1117-bbcbdbdd91f7480693283cd88393b3ff.jpg' style="background-repeat:no-repeat; background-size: 100% 100vh">
<%
  if (request.getParameter("error") != null)
          out.println("<b>Your session has expired or is invalid.</b><br>");
%>
<h2 style= "color: yellow;">Please enter the below details to search for desired flights </h2>
<h4>
<form action="flightpage.jsp">
  Date of travel <input type="date" placeholder="dd-mm-yyyy" name="dot" id="dot"><br>
  <label for="sourcecity">Source City:</label>
<select id="sourcecity" name="sourcecity">
  <option value="New Delhi">New Delhi</option>
  <option value="Bengaluru">Bengaluru</option>
  <option value="Tokyo">Tokyo</option>
  <option value="Kolkata">Kolkata</option>
</select><br>
  <label for="destcity">Destination City:</label>
<select id="destcity" name="destcity">
  <option value="New Delhi">New Delhi</option>
  <option value="Bengaluru">Bengaluru</option>
  <option value="Bangkok">Bangkok</option>
  <option value="Kolkata">Kolkata</option>
</select><br>
No of people <input name="nop" id="nop"><br>
  <button>Search</button>  
</form>
</h4>
</body>
</html>