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

<div class="container-fluid" style="margin-top:-30px">
<h2><center>Contact Us</center></h2>


<%
Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
Connection conn=DriverManager.getConnection("jdbc:mysql://127.11.168.2:3306/hotel","adminQYwKuu4","Rv4qTqA-vUC2"); 
Statement stmt=conn.createStatement();  
ResultSet rs=stmt.executeQuery("select * from owner_contact");  
while(rs.next())  {
%>
<CENTER>
	<STRONG>NAME:</STRONG> <%=rs.getString(1)%>			

  <STRONG>MAIL:</STRONG>   <%=rs.getString(2)%>
 
   <STRONG>PHONE:</STRONG>  <%=rs.getString(3)%>
   <BR><BR><BR>
<STRONG>Open Timings</STRONG><br>
   <STRONG>Days</STRONG>  <%=rs.getString(4)%>

  <STRONG>Time:</STRONG>   <%=rs.getString(5)%>
  <br></br>
  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2972.438240974268!2d-87.61857838536972!3d41.840393175753476!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x880e2b8981467599%3A0x59260e64a9b18b8f!2s2951+S+King+Dr%2C+Chicago%2C+IL+60616!5e0!3m2!1sen!2sus!4v1451929311832" width="600" height="200" frameborder="0" style="border:0" allowfullscreen></iframe>
</CENTER>
<%
}%>

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