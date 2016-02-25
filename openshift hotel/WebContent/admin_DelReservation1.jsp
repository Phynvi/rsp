<%@ page import ="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<html>
<body>
<%

String phone=request.getParameter("phone");  
	
try {
	Class.forName("com.mysql.jdbc.Driver");
	 Connection con = DriverManager.getConnection("jdbc:mysql://127.11.168.2:3306/hotel","adminQYwKuu4","Rv4qTqA-vUC2");
	Statement st = con.createStatement();
	String sql="delete from reservation WHERE phone='"+phone+"'";		     
	st.executeUpdate(sql); 
	response.sendRedirect("admin_reservation.jsp");
} catch (Exception e) {
	// TODO Auto-generated catch block
	
}  
  




%>
</body>
</html>