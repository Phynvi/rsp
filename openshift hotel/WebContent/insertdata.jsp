<!DOCTYPE>
<html>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%
String name=request.getParameter("name");  
String username=request.getParameter("username");  
String password=request.getParameter("password");  
String email=request.getParameter("email");
Class.forName("com.mysql.jdbc.Driver"); 
 	 Connection con=DriverManager.getConnection("jdbc:mysql://127.11.168.2:3306/hotel","adminQYwKuu4","Rv4qTqA-vUC2");  
      PreparedStatement ps=con.prepareStatement(  
"insert into registration values(?,?,?,?)");  
  
ps.setString(1,name);  
ps.setString(2,username);  
ps.setString(3,password);  
ps.setString(4,email);  
          
int i=ps.executeUpdate();  
if(i>0) { 
out.print("You are successfully registered...");    
response.sendRedirect("login.jsp");
}
else{
	out.println("Not registerd");
}   

%>
</body>
</html>