<!DOCTYPE>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<html>
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
      <a class="navbar-brand" href="#">RSP Mall</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="MainPage.jsp">Home</a></li>
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
        <li class="active"><a href="MainPage.jsp">Home</a></li>
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
<div class="container">
<h2> your product is successfully submitted</h2>
</div>
<%
List<Map<String,String>> al2=(ArrayList<Map<String,String>>)session.getAttribute("ses");
if(al2!=null&&al2.size()>0){

for(Map<String,String> a:al2){
%>
<div class="container">


   <img src="<%=a.get("img")%>">
   <%=a.get("name")%>
	

</div>

<%}}

else{%>
No Product Added
<% }%>




</div>
</body>
</html>