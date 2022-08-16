<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style= "color: blue;">Welcome to Admin Page </h1>
<h2 style= "color: blue;">To Change Password </h2>
<form action="UpdatingPass.jsp" method="post">
  Email <input name="email" id="email" maxlength=40><br>
  Old Password <input type="password" name="passwordOld" id="passwordOld" maxlength="40"><br>
  New Password <input type="password" name="passwordNew" id="passwordNew" maxlength="40"><br>
  <button>Change</button>
</form>
<h2 style= "color: blue;">To Check Booking Details </h2>
<form action="BookingTable.jsp" method="post">
  Email <input name="email" id="email" maxlength=40><br>
  <button>Check</button>
</form>
</body>
</html>