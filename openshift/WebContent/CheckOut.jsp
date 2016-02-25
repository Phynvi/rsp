<!DOCTYPE html>
<html lang="en">
<head>
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

<h2>Shipping Address</h2>
<form role="form" action="LoginCheck.jsp">
    <div class="form-group">
     <div class="row">
      <div class="col-xs-5">
      <label for="address">Address</label>
      <input type="text" class="form-control" name="address" placeholder="Enter your Address" required>
      </div>
      <div class="col-xs-1">
      <label for="apt">Apt#</label>
      <input type="text" class="form-control" name="apt" required>
    </div>
    </div></div>
    
     <div class="form-group">
     <div class="row">
      <div class="col-xs-2">
         <label for="city">City</label>
      <input type="text" class="form-control" name="city" maxlength="10" placeholder="Enter City" required>
      </div>
       <div class="col-xs-2">
         <label for="state">State</label>
      <input type="text" class="form-control" name="state" placeholder="Enter State"  maxlength="4" required>
      </div>
      <div class="col-xs-2">
         <label for="zip">Zipcode</label>
      <input type="text" class="form-control" name="zip" placeholder="Zipcode" maxlength="4" required>
      </div>
     </div></div>
    <br><br>
   </form>

  <h2>Card Details</h2>
  <form role="form" action="SubmittedOrder.jsp">
    <div class="form-group">
     <div class="row">
      <div class="col-xs-5">
      <label for="cardname">Name on Card</label>
      <input type="text" class="form-control" name="cardname" required>
    </div>
    </div></div>
    <div class="form-group">
     <div class="row">
      <div class="col-xs-5">
      <label for="cardnumber">Card Number</label>
      <input type="text" class="form-control" name="cardnumber" required>
      </div></div>
    </div>
     <div class="form-group">
     <div class="row">
      <div class="col-xs-1">
         <label for="exp1"></label>
      <input type="text" class="form-control" name="exp1" maxlength="2" size="2" placeholder="MM" required>
      </div>
       <div class="col-xs-2">
         <label for="exp2"></label>
      <input type="text" class="form-control" name="exp2" placeholder="YYYY"  maxlength="4" required>
      </div>
      <div class="col-xs-2">
         <label for="ccv"></label>
      <input type="text" class="form-control" name="ccv" placeholder="ccv"  maxlength="4" required>
      </div>
     </div>
    <br><br>
    <button type="submit" class="btn btn-primary">Pay</button>
  </form>
  </div>


</body>
</html>
