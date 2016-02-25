<%@ page import ="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<html>
<body>
<%
String username1 = request.getParameter("username");   
String password1 = request.getParameter("password");
if(username1.equals("admin")&&password1.equals("admin")){
	response.sendRedirect("admin.jsp");
	
}
else{
Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
Connection conn=DriverManager.getConnection("jdbc:mysql://127.7.209.2:3306/shop","adminS4VRAdX","HZbsqpuGp9Hz"); 
PreparedStatement pst = conn.prepareStatement("Select username,password from jsp_table where username=? and password=?");
pst.setString(1, username1);
pst.setString(2, password1);
ResultSet rs = pst.executeQuery();                        
if(rs.next())  {
   session.setAttribute("username1",username1);
   response.sendRedirect("MainPage.jsp");  
   }  
else
   out.println("Invalid login credentials");  }
  
%>

</body>
</html>