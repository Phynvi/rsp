import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class admin_update extends HttpServlet{  
public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException{ 
	
	  String name=request.getParameter("name");
	  String date=request.getParameter("date");
	  String time=request.getParameter("time");
	  String tablename=request.getParameter("tablename");
	  String phone=request.getParameter("phone");
	PrintWriter out=response.getWriter();
	
	int i=0;
 	 Connection con;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
		PreparedStatement ps=con.prepareStatement("update reservation set name=?,date=?,time=?,tablename=? where phone ="+phone);  
		ps.setString(1,name);  
		ps.setString(2,date);  
		ps.setString(3,time); 
		ps.setString(4,tablename);  
		       
		i=ps.executeUpdate(); 
	} catch (SQLException | ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}   
  
if(i>0) { 
 
response.sendRedirect("admin_reservation.jsp");
}
else{
	out.println("Product Not Added");
}
	
}}