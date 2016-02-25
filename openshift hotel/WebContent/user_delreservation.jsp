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
<% String nameuser=(String)session.getAttribute("username1"); %>
<%if(nameuser==null) {%>
<nav class="navbar navbar-inverse"style="margin-left:15px;margin-right:15px;">
  <div class="container-fluid" >
    <div class="navbar-header">
      <a class="navbar-brand" href="#">RSP Hotels</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="firstpage.jsp">Home</a></li>
        
        <li><a href="reservation.jsp">Reserve</a></li>
        <li><a href="Movies.jsp">Movies</a></li>
        <li><a href="EditReservation.jsp">Edit Reservation</a></li>
        <li ><a href="user_delreservation.jsp">Delete Reservations</a></li>  
         <li ><a href="contact.jsp">Contact</a></li>   
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="registration.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
       
      </ul>
    </div>
  </div>
</nav>
<%} %>
<% if(nameuser!=null){%>
	
<nav class="navbar navbar-inverse"style="margin-left:15px;margin-right:15px;">
  <div class="container-fluid" >
    <div class="navbar-header">
      <a class="navbar-brand" href="#">RSP Hotels</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="firstpage.jsp">Home</a></li>
        
        <li><a href="reservation.jsp">Reserve</a></li>
        <li><a href="Movies.jsp">Movies</a></li>
        <li><a href="EditReservation.jsp">Edit Reservation</a></li>
        <li ><a href="user_delreservation.jsp">Delete Reservations</a></li>  
         <li ><a href="View_History.jsp">Reservations History</a></li>   
          <li ><a href="contact.jsp">Contact</a></li>  
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li ><a href="#" style="color:white">Welcome <%=nameuser %></a></li>
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
<% }%> 
<div class="container-fluid" >

  <h2>Enter Product Details</h2>
  <form role="form" action="User_DelReservation1.jsp">
   <div class="form-group">
     <div class="row">
      <div class="col-xs-4">
      <label for="phone">Confirmation Number</label>
      <input type="text" class="form-control" name="phone" placeholder="enter confirmation number" required>
      </div></div>
      </div>
    
       
     <div class="form-group">
     <div class="row">
      <div class="col-xs-5">
      <button type="submit" class="btn btn-danger">Delete</button>
      </div></div>
      </div>       
      </form>
    
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