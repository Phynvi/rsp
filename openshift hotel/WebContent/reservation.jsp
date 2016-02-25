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

<form action="reserve.jsp">
<table class="table table-hover">
<thead>
 <tr>
   <th>Table</th>
   <th>Image</th>
   <th>Reserve</th>
 </tr>
</thead>
<tbody>
<tr>
	<td>Table 1</td>
	<td><img src="img/table4.jpg" style="width:250px;height:200px;"></td>
	<td><button type="submit" class="btn btn-success" value="table1" name="table">Reserve</button></td>
</tr>
<tr>
	<td>Table 2</td>
	<td><img src="img/table3.jpg" style="width:250px;height:200px;"></td>
	<td><button type="submit" class="btn btn-success" value="table2"  name="table">Reserve</button></td>
</tr>
<tr>
	<td>Table 3</td>
	<td><img src="img/table3.jpg" style="width:250px;height:200px;"></td>
	<td><button type="submit" class="btn btn-success" value="table3"  name="table">Reserve</button></td>
</tr>
<tr>
	<td>Table 4</td>
	<td><img src="img/table4.jpg" style="width:250px;height:200px;"></td>
	<td><button type="submit" class="btn btn-success" value="table4"  name="table">Reserve</button></td>
</tr>
</tbody>
</table>
</form>
</div>

<div class="footer">
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
