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
<div class="container-fluid">
    
      <h2>Delete Product</h2>
      <form role="form" action="admin_delProduct.jsp">
      
        <div class="form-group">
     <div class="row">
      <div class="col-xs-5">
      <label for="id">Id</label>
      <input type="text" class="form-control" name="id" >
    </div>
    </div></div>
       <div class="form-group">
     <div class="row">
      <div class="col-xs-5">
      <button type="submit" class="btn btn-danger">Delete Product</button>
      </div></div>
      </div>  
      
      </form>
    </div>
    
    <div class="container-fluid">
    <table>
<tr>
<%
Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
Connection conn=DriverManager.getConnection("jdbc:mysql://127.7.209.2:3306/shop","adminS4VRAdX","HZbsqpuGp9Hz"); 
Statement stmt=conn.createStatement();  
ResultSet rs=stmt.executeQuery("select * from jsp_practise");  
String imgLoc = null;
int index=0;
while(rs.next())  {
imgLoc="img/"+rs.getString(4)+".jpg";
%>

<a href="shopping?index=<%=index%>&id=<%=rs.getString(1)%>&name=<%=rs.getString(2)%>&desc=<%=rs.getString(3)%>&image=<%=rs.getString(4)%>">
<img src="<%=imgLoc%>">

<%=rs.getString(2)%>


<%
}%>
</tr>
</table>
  </div>    
    
    
    
    
    
    
    </body>
    </html>