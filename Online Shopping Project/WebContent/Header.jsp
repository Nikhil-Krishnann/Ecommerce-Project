<%@page errorPage="Error.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/8f3d101f62.js"></script>
<meta charset="ISO-8859-1">
</head>
<!-- Header -->
<br>
<div class="topnav sticky">
<%String email=session.getAttribute("email").toString(); %>

<center><h2>Online Shopping</h2></center>
<h2><a href=""><%out.println(email);%><i class='fas fa-user-alt'></i></a></h2>
<a href="Home.jsp">Home <i class='fa fa-institution'></i></a>
<a href="MyCart.jsp">My Cart <i class='fas fa-cart-arrow-down'></i></a>
<a href="MyOrders.jsp">My Orders <i class='fab fa-elementor'></i></a>
<a href="ChangeDetails.jsp">Change Details <i class='fa fa-edit'></i></a>
<a href="MessageUs.jsp">Message Us <i class='fas fa-comment-alt'></i></a>
<a href="AboutUs.jsp">About Us <i class='fa fa-address-book'></i></a>
<a href="Logout.jsp">Logout <i class='fas fa-share-square'></i></a>
<div class="search-container">
<form action="SearchHome.jsp" method="post">
<input type="text" name="search" placeholder="Search Here">
<button type="submit"><i class='fa fa-search'></i></button>
</form>
</div>
</div>
<br>
<!-- table -->
</html>