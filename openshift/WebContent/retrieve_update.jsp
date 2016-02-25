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

<div class="container-fluid">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">RSP Mall</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="admin.jsp">Home</a></li>              
      </ul>
       <ul class="nav navbar-nav">
        <li ><a href="addProduct.jsp">Add Product</a></li>              
      </ul>
       <ul class="nav navbar-nav">
        <li><a href="delProduct.jsp">Delete Product</a></li>              
      </ul>
      <ul class="nav navbar-nav">
        <li><a href="updProduct.jsp">Update Product</a></li>              
      </ul>
      <ul class="nav navbar-nav navbar-right">
    
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
    </div>
  </div>
  </nav>
  </div>  
  <%
  String upd_id=request.getParameter("upd_id");
  String id=request.getParameter("id");
  String name=request.getParameter("name");
  String description=request.getParameter("description");
  
  %>
<div class="container-fluid">
  <h2>Enter Product Details</h2>
  <form role="form" action="retrieve_update1.jsp">
  
   <div class="form-group">
       <div class="form-group">
     <div class="row">
      <div class="col-xs-4">
      <label for="id"> id</label>
      <input type="text" class="form-control" name="id" value=<%=id%>>
      <input type="hidden" name="upd_id" value=<%=upd_id %>>
      </div></div>
      </div>
        
     <div class="row">
      <div class="col-xs-4">
      <label for="name">Name</label>
      <input type="text" class="form-control" name="name" value=<%=name%>>
      </div></div>
      </div> 
    
    
      <div class="form-group">
     <div class="row">
      <div class="col-xs-6">
      <label for="description">Description</label>
      <input type="text" class="form-control" name="description" maxlength="500" value=<%=description%> >
      </div></div>
      </div>
      
     
    
     <div class="form-group">
     <div class="row">
      <div class="col-xs-5">
      <button type="submit" class="btn btn-success">Update</button>
      </div></div>
      </div>       
      </form>
      
    </div>
    
     
    </body>
    </html>