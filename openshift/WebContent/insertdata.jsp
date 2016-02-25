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


	Class.forName("com.mysql.jdbc.Driver"); 
 	 Connection con=DriverManager.getConnection("jdbc:mysql://127.7.209.2:3306/shop","adminS4VRAdX","HZbsqpuGp9Hz");  
      PreparedStatement ps=con.prepareStatement(  
"insert into jsp_table values(?,?,?)");  
  
ps.setString(1,name);  
ps.setString(2,username);  
ps.setString(3,password);  
          
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