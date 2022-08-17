<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
</head>
<body background='https://www.maketecheasier.com/assets/uploads/2021/05/how-to-enable-standard-users-to-run-a-program-with-admin-rights-featured-800x400.jpg.webp' style="background-repeat:no-repeat; background-size: 100% 100vh">
<h1 style= "color: blue;">Welcome to Admin Page </h1>
<h2 style= "color: blue;">To Change Password </h2>
<h4 style= "color: white;">
<form action="UpdatingPass.jsp" method="post">
  Email <input name="email" id="email" maxlength=40><br>
  Old Password <input type="password" name="passwordOld" id="passwordOld" maxlength="40"><br>
  New Password <input type="password" name="passwordNew" id="passwordNew" maxlength="40"><br>
  <button>Change</button></h4>
  <h2 style= "color: blue;">To Check Booking Details </h2>
</form>
</h4>
<h4 style= "color: white;">
<form action="BookingTable.jsp" method="post">
  Email <input name="email" id="email" maxlength=40><br>
  <button>Check</button> 
</form>
</h4>
</body>
</html>