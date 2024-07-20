<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/signup-style.css">
<title>Forgot Password</title>
</head>
<body>
<div id='container'>
<div class='signup'>
<form action="ForgotPasswordAction.jsp" method="post">
<input type="email" name="email" placeholder="Enter Email" required="required">
<input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required="required">
<select name="securityQuestion">
<option value="What was your first car?">What was your first car?</option>
<option value="What is the name of your first pet?">What is the name of your first pet?</option>
<option value="What elementary school did you attend?">What elementary school did you attend?</option>
<option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
</select>
<input type="text" name="answer" placeholder="Enter Answer" required="required">
<input type="password" name="newPassword" placeholder="Enter Your New Password to Set" required="required">
<input type="submit" value="Save">
</form>
<h2><a href="Login.jsp">Login</a></h2>
</div>
<div class='whyforgotPassword'>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{%>
	<h1>Password Changed Successfully!</h1>
<%}%>
<%
if("invalid".equals(msg))
{
%>
<h1>Something Went Wrong! Try Again !</h1>
<%}%>

<h2>Online Shopping</h2>
<p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
</div>
</div>
</body>
</html>