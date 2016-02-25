<%@ page import ="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<html>
<body>
<%
String id=request.getParameter("id");  


	
try {
	Class.forName("com.mysql.jdbc.Driver");
	 Connection con = DriverManager.getConnection("jdbc:mysql://127.7.209.2:3306/shop","adminS4VRAdX","HZbsqpuGp9Hz");
	Statement st = con.createStatement();
	String sql="delete from jsp_practise WHERE id='"+id+"'";
	//PreparedStatement ps=con.prepareStatement("delete * from jsp_practise where id="+id);  		       
	st.executeUpdate(sql); 
	response.sendRedirect("delProduct.jsp");
} catch (Exception e) {
	// TODO Auto-generated catch block
	
}  
  







%>
</body>
</html>