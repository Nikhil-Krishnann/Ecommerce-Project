<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/8f3d101f62.js"></script>
<meta charset="ISO-8859-1">
</head>

<!-- Header -->
<br>
<div class="topnav sticky">
<%String email=session.getAttribute("email").toString(); %>

<center><h2>Online Shopping</h2></center>
<h2><a href=""><%out.println(email);%><i class="fa-solid fa-user-tie"></i></a></h2>
<a href="adminHome.jsp">Admin Home <i class='fa fa-institution'></i></a>
<a href="AddNewProduct.jsp">Add New Product <i class='fas fa-plus-square'></i></a>
<a href="AllProductEditProduct.jsp">All Products & Edit Products <i class='fab fa-elementor'></i></a>
<a href="MessagesReceived.jsp">Messages Received <i class='fas fa-comment-alt'></i></a>
<a href="OrdersReceived.jsp">Orders Received <i class='fas fa-archive'></i></a>
<a href="CancelOrders.jsp">Cancel Orders <i class='fas fa-window-close'></i></a>
<a href="DeliveredOrders.jsp">Delivered Orders <i class='fas fa-dolly'></i></a>
<a href="../Logout.jsp">Logout <i class='fas fa-share-square'></i></a>
</div>
<br>
<!-- table -->
</html>