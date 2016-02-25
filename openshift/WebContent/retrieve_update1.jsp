<%@ page import ="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<html>
<body>
<%
int upd_id=Integer.parseInt(request.getParameter("upd_id"));
int id=Integer.parseInt(request.getParameter("id"));  
String name=request.getParameter("name");  
String description=request.getParameter("description");  
//String image=request.getParameter("image"); 

//String driver="com.mysql.jdbc.Driver";
int i=0;
	 Connection con;
try {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://127.7.209.2:3306/shop","adminS4VRAdX","HZbsqpuGp9Hz");
	PreparedStatement ps=con.prepareStatement("update jsp_practise set id=?,name=?,description=? where id ="+upd_id);  
	ps.setInt(1,id);  
	ps.setString(2,name);  
	ps.setString(3,description);  
	//ps.setString(4,image);         
	i=ps.executeUpdate(); 
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}   

if(i>0) { 

response.sendRedirect("updProduct.jsp");
}
else{
out.println("Product Not Added");
}




%>
</body>
</html>