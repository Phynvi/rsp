<%@page import="java.io.PrintWriter"%>
<%@ page import ="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">RSP Hotels</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="admin.jsp">Home</a></li>              
      </ul>
       <ul class="nav navbar-nav">
        <li ><a href="admin_reservation.jsp">Show Reservations</a></li>              
      </ul>
        <ul class="nav navbar-nav">
        <li ><a href="admin_delreservation.jsp">Delete Reservations</a></li>              
      </ul>
       <ul class="nav navbar-nav">
        <li ><a href="Admin_EditContact.jsp">Edit Contact</a></li>              
      </ul>
       
       
      <ul class="nav navbar-nav navbar-right">
    
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
    </div>
  </div>
  </nav>
 
  <h2> Welcome Admin!</h2>
 </div> 
  <div class="footer navbar-fixed-bottom">
<nav class="navbar navbar-inverse"style="margin-left:15px;margin-right:15px;">
  <div class="container-fluid" >
    
    <div>
      
      <ul class="nav navbar-nav navbar-right">
        <li style="color:white">copyright:PravinKumaar</li>
       
       
      </ul>
    </div>
  </div>
</nav>
</div> 
</body>
</html>