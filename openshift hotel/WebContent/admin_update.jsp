<%@ page import ="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<html>
<body>
<%

String name=request.getParameter("name");  
String date=request.getParameter("date");  
String time=request.getParameter("time"); 
String tablename=request.getParameter("tablename");
String phone=request.getParameter("phone");


int i=0;
	 Connection con;
try {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://127.11.168.2:3306/hotel","adminQYwKuu4","Rv4qTqA-vUC2");
	PreparedStatement ps=con.prepareStatement("update reservation set name=?,date=?,time=?,tablename=? where phone ='"+phone+"'");  
	ps.setString(1,name);  
	ps.setString(2,date);  
	ps.setString(3,time);  
	ps.setString(4,tablename);      
	i=ps.executeUpdate(); 
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}   

if(i>0) { 

response.sendRedirect("admin_reservation.jsp");
}
else{
out.println("Product Not Added");
}



%>
</body>
</html>