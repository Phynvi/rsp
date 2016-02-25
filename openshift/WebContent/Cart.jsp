<%@ page import ="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<html>
<body>
<%
try{  
Class.forName("com.mysql.jdbc.Driver");  
  
Connection con=DriverManager.getConnection(  
		"jdbc:mysql://127.7.209.2:3306/shop","adminS4VRAdX","HZbsqpuGp9Hz");  
  
Statement stmt=con.createStatement(); 
//int id=(Integer.parseInt(request.getParameter("id")));
  
ResultSet rs=stmt.executeQuery("select * from jsp_practise");

  

while(rs.next()) {
out.print("<table border=\"1\" style=\"border-collapse: collapse\">");
out.print("<tr>");
out.println("<td>"+rs.getInt(1)+"</td>");
out.println("<td>"+rs.getString(2)+"</td>");
out.println("<td>"+rs.getString(3)+"</td>");
out.println("<td>"+"<a href=\"shopping1.jsp?id="+rs.getString(1)+"&name="+rs.getString(2)+"&desc="+rs.getString(3)+"\">"+ "ADD"   +"</a>"+"</td>");
out.print("</tr>");
out.print("<table>");
 
}con.close(); 
}catch(Exception e){ System.out.println(e);}  
  



%>
</body>
</html>