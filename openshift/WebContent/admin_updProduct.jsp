<%@ page import ="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<html>
<body>
<%

int upd_id=Integer.parseInt(request.getParameter("upd_id"));
//int id=Integer.parseInt(request.getParameter("id"));  
//String name=request.getParameter("name");  
//String description=request.getParameter("description");  
//String image=request.getParameter("image"); 

//String driver="com.mysql.jdbc.Driver";
int i=0;
	 Connection con;
try {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://127.7.209.2:3306/shop","adminS4VRAdX","HZbsqpuGp9Hz");
	Statement stmt=con.createStatement();  
	ResultSet rs=stmt.executeQuery("select * from jsp_practise where id='"+upd_id+"'");   
	if(rs.next()){
	
		out.print(rs.getInt(1));
		out.print(rs.getString(2));
		out.print(rs.getString(3));
		response.sendRedirect("retrieve_update.jsp?id="+rs.getInt(1)+"&name="+rs.getString(2)+"&description="+rs.getString(3)+"&upd_id="+upd_id);
	}
	
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}   


%>
</body>
</html>