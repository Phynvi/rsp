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
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SNRSP Mall</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Accessories<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Accessories-1</a></li>
            <li><a href="#">Accessories-2</a></li>
            <li><a href="#">Accessories-3</a></li>
          </ul>
        </li>
        <li><a href="products.jsp">Products</a></li>
        <li><a href="Movies.jsp">Movies</a></li>
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
	
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">RSP Mall</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Accessories<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Accessories-1</a></li>
            <li><a href="#">Accessories-2</a></li>
            <li><a href="#">Accessories-3</a></li>
          </ul>
        </li>
        <li><a href="products.jsp">Products</a></li>
        <li><a href="Movies.jsp">Movies</a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li ><a href="#" style="color:white">Welcome <%=nameuser %></a></li>
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
<% }%> 
<div class="container-fluid">  
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="img/image1.jpg" alt="Chania" width="1400" height="745">
      </div>

      <div class="item">
        <img src="img/image2.jpg" alt="Chania" width="1400" height="745">
      </div>
    
      <div class="item">
        <img src="img/image3.jpg" alt="Flower" width="1400" height="745">
      </div>

      <div class="item">
        <img src="img/image4.jpg" alt="Flower" width="1400" height="745">
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
<br><br>


<div class="container-fluid">
<h2><center>Featured Products</center></h2>
<table>

<%
Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
Connection conn=DriverManager.getConnection("jdbc:mysql://127.7.209.2:3306/shop","adminS4VRAdX","HZbsqpuGp9Hz"); 
Statement stmt=conn.createStatement();  
ResultSet rs=stmt.executeQuery("select * from jsp_practise");  
String imgLoc = null;
int index=1;

while(rs.next())  {
imgLoc="img/"+rs.getString(4)+".jpg";

if(index==1){%>
<tr>
<% }%>
<td>
<table>
<tr><td>
<a href="shopping1.jsp?index=<%=index%>&id=<%=rs.getString(1)%>&name=<%=rs.getString(2)%>&desc=<%=rs.getString(3)%>&image=<%=rs.getString(4)%>">
<img src="<%=imgLoc%>">


</a></td></tr>
<tr><td>
<%=rs.getString(2)%>
</td></tr>
</table>
</td>
<% 
if(index==8){ %>
</tr>
<% 
index=0;
}
index++;
}
%>
</table>
</div>

















<br><br>

<div class="container-fluid">
<iframe width="250" height="250" src="https://www.youtube.com/embed/ecO27fl_kiE" frameborder="0" allowfullscreen></iframe>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<iframe width="250" height="250" src="https://www.youtube.com/embed/FQn6aFQwBQU" frameborder="0" allowfullscreen></iframe>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<iframe width="250" height="250" src="https://www.youtube.com/embed/Te1-KXiawOE" frameborder="0" allowfullscreen></iframe>
</div>
</body>
</html>
