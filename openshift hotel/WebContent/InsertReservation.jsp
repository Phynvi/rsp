<%@ page import ="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<html>
<body>
<%
String name=request.getParameter("name");  
String phone=request.getParameter("phone");  
String date=request.getParameter("date");  
String time=request.getParameter("time"); 
String table=request.getParameter("table"); 
String username=request.getParameter("username");

//String driver="com.mysql.jdbc.Driver";
int i=0;
	 Connection con;
try {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://127.11.168.2:3306/hotel","adminQYwKuu4","Rv4qTqA-vUC2");
	PreparedStatement ps=con.prepareStatement("insert into reservation values(?,?,?,?,?,?)");  
	ps.setString(1,name);  
	ps.setString(2,phone);  
	ps.setString(3,date);  
	ps.setString(4,time);  
	ps.setString(5,table); 
	ps.setString(6,username);
	i=ps.executeUpdate(); 
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}   

if(i>0) { 

response.sendRedirect("ReservationSuccess.jsp?phone="+phone+"&flag=added");
}
else{
out.println("Product Not Added");
}





%>
</body>
</html>