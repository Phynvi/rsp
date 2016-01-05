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
<div class="container-fluid" style="margin-top:-35px;">  
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="img/image1.jpg" alt="Chania" width="1400" height="850">
      </div>

      <div class="item">
        <img src="img/image2.jpg" alt="Chania" width="1400" height="850">
      </div>
    
      <div class="item">
        <img src="img/image3.jpg" alt="Flower" width="1400" height="850">
      </div>

      
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>     
</div>
<div class="container-fluid">
<hr>
  <h1><center>About RSP Hotel</center></h1>
  <div class="row">
<div class="col-sm-4"><h5><strong>ABOUT</strong></h5><br>We are a global hospitality company with widely recognized, industry leading brands and a commitment to excellence.The purpose of the Hotel Association of Tarrant County is to advocate for our members through idea exchange, community involvement, government interaction and resource development, and we give our members the platform to get their voices heard, no matter how big or how small.</div>

<div class="col-sm-4"><h5><strong>OUR PURPOSE</strong></h5><br>We care for people so they can be their best.The purpose of the Hotel Association of Tarrant County is to advocate for our members through idea exchange, community involvement, government interaction and resource development, and we give our members the platform to get their voices heard, no matter how big or how small.</div>
<div class="col-sm-4"><h5><strong>OUR VALUES</strong></h5><br>
Our shared set of values define our culture: Respect. Empathy. Integrity. Creativity. Humility. Fun.The purpose of the Hotel Association of Tarrant County is to advocate for our members through idea exchange, community involvement, government interaction and resource development, and we give our members the platform to get their voices heard, no matter how big or how small.</div>
  </div>
</div>
<br><br>

<br><br>

<div class="container-fluid" style="margin-top:-50px;">
<hr>
<iframe width="250" height="250" src="https://www.youtube.com/embed/ecO27fl_kiE" frameborder="0" allowfullscreen></iframe>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<iframe width="250" height="250" src="https://www.youtube.com/embed/FQn6aFQwBQU" frameborder="0" allowfullscreen></iframe>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<iframe width="250" height="250" src="https://www.youtube.com/embed/Te1-KXiawOE" frameborder="0" allowfullscreen></iframe>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<iframe width="250" height="250" src="https://www.youtube.com/embed/f4bTVZWTTao" frameborder="0" allowfullscreen></iframe>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<iframe width="250" height="250" src="https://www.youtube.com/embed/Bb_42qNaE2E" frameborder="0" allowfullscreen></iframe>
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
