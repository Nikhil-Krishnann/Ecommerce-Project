<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.project.core.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup Action</title>
</head>
<body>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");
String address="";
String city="";
String state="";
String country="";
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement stmt=con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?)");
	stmt.setString(1,name);
	stmt.setString(2,email);
	stmt.setString(3,mobileNumber);
	stmt.setString(4,securityQuestion);
	stmt.setString(5,answer);
	stmt.setString(6,password);
	stmt.setString(7,address);
	stmt.setString(8,city);
	stmt.setString(9,state);
	stmt.setString(10,country);
	stmt.executeUpdate();
	response.sendRedirect("Signup.jsp?msg=valid");
}
catch(Exception e)
{
	//System.out.println(e);
	response.sendRedirect("Signup.jsp?msg=invalid");
}

%>
</body>
</html>