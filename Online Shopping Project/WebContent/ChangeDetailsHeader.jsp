<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/8f3d101f62.js"></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
    <%String email=session.getAttribute("email").toString(); %>
    
            <center><h2>Change Details<i class="fa fa-edit"></i></h2></center>
             
            <h2><a href="Home.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>
             <h2><a href=""><%out.println(email);%> <i class='fas fa-user-alt'></i></a></h2>
            <a href="ChangePassword.jsp">Change Password <i class='fas fa-key'></i></a>
            <a href="AddOrChangeAddress.jsp">Add or Change Address <i class='fas fa-map-marker-alt'></i></a>
            <a href="ChangeSecurityQuestion.jsp">Change Security Question or Answer <i class="fa fa-repeat"></i></a>
            <a href="ChangeMobileNumber.jsp">Change Mobile Number <i class='fas fa-phone'></i></a>
          </div>
           <br>
           <!--table-->
           
  