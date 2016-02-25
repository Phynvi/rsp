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
      <a class="navbar-brand" href="#">RSP Hotels</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="admin.jsp">Home</a></li>              
      </ul>
       <ul class="nav navbar-nav">
        <li ><a href="admin_reservation.jsp">Show Reservations</a></li>              
      </ul>
       <ul class="nav navbar-nav">
        <li ><a href="admin_delreservation.jsp">Delete Reservations</a></li>              
      </ul>
        <ul class="nav navbar-nav">
        <li ><a href="Admin_EditContact.jsp">Edit Contact</a></li>              
      </ul>
       
      <ul class="nav navbar-nav navbar-right">
    
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
    </div>
  </div>
  </nav>
</div>

<div class="container-fluid" style="margin-top:-30px">
<h2><center>Reservations</center></h2>


<%
Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
Connection conn=DriverManager.getConnection("jdbc:mysql://127.11.168.2:3306/hotel","adminQYwKuu4","Rv4qTqA-vUC2"); 
Statement stmt=conn.createStatement();  
ResultSet rs=stmt.executeQuery("select * from reservation");  
while(rs.next())  {
%>
<table class="table table-hover table-bordered">

 <tbody>
  <tr>
	<td class="success" style="width:250px"><%=rs.getString(1)%></td>
	<td class="danger" style="width:250px"><%=rs.getString(2)%></td>
	<td class="success" style="width:250px"><%=rs.getString(3)%></td>
	<td class="danger" style="width:250px"><%=rs.getString(4)%></td>
	<td class="success" style="width:250px"><%=rs.getString(5)%></td>
	
	<td><a href="admin_editreservation.jsp?name=<%=rs.getString(1)%>&date=<%=rs.getString(3)%>&time=<%=rs.getString(4)%>&tablename=<%=rs.getString(5)%>&phone=<%=rs.getString(2)%>"><button type="submit" class="btn btn-success" style="width:100px" >Edit</button></a></td>
 </tr>
 </tbody>
</table>
<%
}%>

</div>
 <div class="footer ">
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