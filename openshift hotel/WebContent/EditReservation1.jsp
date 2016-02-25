<%@ page import ="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<html>
<body>
<%
String phone=request.getParameter("phone");

int i=0;
	 Connection con;
try {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://127.11.168.2:3306/hotel","adminQYwKuu4","Rv4qTqA-vUC2");
	Statement stmt=con.createStatement();  
	ResultSet rs=stmt.executeQuery("select * from reservation where phone='"+phone+"'");   
	if(rs.next()){
	
		out.print(rs.getString(1));
		out.print(rs.getString(3));
		out.print(rs.getString(4));
		response.sendRedirect("retrieve_update.jsp?name="+rs.getString(1)+"&date="+rs.getString(3)+"&time="+rs.getString(4)+"&phone="+phone);
	}
	
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}   






%>
</body>
</html>