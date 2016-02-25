<%@ page import ="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<html>
<body>
<%
String name=request.getParameter("name");
String phone=request.getParameter("phone");
String mail=request.getParameter("mail");
String date=request.getParameter("date");
String timings=request.getParameter("time");


int i=0;
Connection con;
try {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://127.11.168.2:3306/hotel","adminQYwKuu4","Rv4qTqA-vUC2");
	PreparedStatement ps=con.prepareStatement("update owner_contact set name=?,phone=?,email=?,date=?,timings=? where id=1");  
	ps.setString(1,name);  
	ps.setString(2,phone);  
	ps.setString(3,mail); 
	ps.setString(4,date);  
	ps.setString(5,timings);
	       
	i=ps.executeUpdate(); 
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}   

if(i>0) { 

response.sendRedirect("contact.jsp");
}
else{
out.println("Product Not Added");
}

%>
</body>
</html>