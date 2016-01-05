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
<%
String flag=request.getParameter("flag");
%>
<div class="container" style="margin-left:350px;">
  <h2>Login Page<a href="registration.jsp">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;   <button type="submit" class="btn btn-default">Sign up</button></a></h2> 
  <%if (flag==null){ %>
  <form role="form" action="LoginCheck.jsp">
    <div class="form-group">
    <div class="row">
      <div class="col-xs-5">
      <label for="username">UserName:</label>
      <input type="text" class="form-control" name="username" placeholder="Enter your username" required>
    </div></div></div>
    <div class="form-group">
    <div class="row">
      <div class="col-xs-5">
      <label for="password">Password:</label>
      <input type="password" class="form-control" name="password" placeholder="Enter your password" required>
    </div></div></div>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form><%} %>
  
  <%if (flag!=null){ %>
  <h2>login must to shop</h2>
  <form role="form" action="LoginCheck.jsp">
    <div class="form-group">
      <label for="username">UserName:</label>
      <input type="password" class="form-control" name="username" placeholder="Enter your username" required>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" name="password" placeholder="Enter your password" required>
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
   
  </form><%} %>
  
 </div>

</body>
</html>
 
 