<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.project.core.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Action</title>
</head>
<body>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
if("admin@gmail.com".equals(email)&&"admin".equals(password))
{
	session.setAttribute("email", email);
	response.sendRedirect("admin/adminHome.jsp");
}
else
{
	int z=0;
	try
	{
		Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();
		ResultSet res=stmt.executeQuery("select * from users where email='"+email+"' && password='"+password+"'");
		while(res.next())
		{
			z=1;
			session.setAttribute("email", email);
			response.sendRedirect("Home.jsp");
			
		}
		if(z==0)
          response.sendRedirect("Login.jsp?msg=notexist");
	}
	catch(Exception e)
	{
		//System.out.println(e);
		response.sendRedirect("Login.jsp?msg=invalid");
	}
}
%>
</body>
</html>