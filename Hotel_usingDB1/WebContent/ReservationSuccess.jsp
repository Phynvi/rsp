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
<div class="container">
 
 <% 
 String phone=request.getParameter("phone");
 String flag=request.getParameter("flag");
  %>
  
<%if(flag.equals("added")) {%>
 <center>
  <h3> Your Confirmation Number is <%=phone %><br><br>
   Reservation is Successful</h3>
</center>
 <%}%>
<%if(flag.equals("delete")) {%>
  <center>

  <h3> Your Reservation is Deleted</h3>
</center>

 <%}%>
 <%if(flag.equals("update")) {%>
  <center>

  <h3> Your Updation is Successful</h3>
</center>

 <%}%>
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