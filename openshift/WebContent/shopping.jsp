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
<%
List<Map<String,String>> al2=(ArrayList<Map<String,String>>)session.getAttribute("ses");
if(al2!=null&&al2.size()>0){
for(Map<String,String> a:al2){
%>
<div class="container-fluid">
<div class="table-striped">
<table class="table">
<thead>
      <tr>
        <th>Image</th>
        <th>id</th>
        <th>Name</th>
        <th>Description</th>
        <th>Remove</th>
      </tr>
    </thead>
<tbody>
 <tr>
   <td>	<img src="<%=a.get("img")%>"></td>
	<td><%=a.get("id")%></td>
	<td><%=a.get("name")%></td>
	<td><%=a.get("desc")%></td>
	<td><a href="shopping1.jsp?flag=Remove&flagId=<%=a.get("id")%>" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-remove"></span>Remove</a></td>
	<br/>
  </tr>
 </tbody>
</table> 
</div>

<%}}

else{%>
Shopping Cart is Empty
<% }%>



<a href="MainPage.jsp" class="btn btn-success" role="button"><span class="	glyphicon glyphicon-shopping-cart"></span>ContinueShopping</a>
<%if(nameuser!=null) {%>
<a href="CheckOut.jsp?" class="btn btn-success" role="button"><span class="	glyphicon glyphicon-shopping-cart"></span>Proceed to checkout</a>
<%} %>
<%if(nameuser==null){  %>

<a href="login.jsp?flag=mustlogin" class="btn btn-success" role="button"><span class="	glyphicon glyphicon-shopping-cart"></span>Proceed to checkout</a>
<%} %>

</div>
</body>
</html>