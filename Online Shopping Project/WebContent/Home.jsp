<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.project.core.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Header.jsp" %>
<%@ include file="footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
h3
{
color:yellow;
text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<%
String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>
<h3 class="alert">Product Added Successfully!</h3>
<%}%>
<%
if("exist".equals(msg))
{
%>
<h3 class="alert">Product already exist in your cart! Quantity increased!</h3>
<%}%>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Something Went Wrong! Try Again!</h3>
<%}%>

<table>
<thead>
<tr>
<th scope="col">ID</th>
<th scope="col">Name</th>
<th scope="col">Category</th>
<th scope="col"><i class="fa fa-inr"></i> Price</th>
<th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
</tr>
</thead>

<tbody>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from product where active='yes'");
	while(rs.next())
	{
%>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><i class="fa fa-inr"><%=rs.getString(4) %></i> </td>
<td><a href="AddToCartAction.jsp?id=<%=rs.getString(1) %>">Add to Cart <i class='fas fa-cart-plus'></i></a></td>
</tr>
<%
	}
}
catch(Exception e)
{
	//System.out.println(e);
}
%>
</tbody>
</table>
<br>
<br>
<br>

</body>
</html>