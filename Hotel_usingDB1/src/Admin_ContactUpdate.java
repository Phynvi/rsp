import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Admin_ContactUpdate extends HttpServlet{  
public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException{ 
	
	  String name=request.getParameter("name");
	  String phone=request.getParameter("phone");
	  String mail=request.getParameter("mail");
	  String date=request.getParameter("date");
	  String timings=request.getParameter("time");
	PrintWriter out=response.getWriter();
	
	int i=0;
 	 Connection con;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
		PreparedStatement ps=con.prepareStatement("update owner_contact set name=?,phone=?,email=?,date=?,timings=? where id=1");  
		ps.setString(1,name);  
		ps.setString(2,phone);  
		ps.setString(3,mail); 
		ps.setString(4,date);  
		ps.setString(5,timings);
		       
		i=ps.executeUpdate(); 
	} catch (SQLException | ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}   
  
if(i>0) { 
 
response.sendRedirect("contact.jsp");
}
else{
	out.println("Product Not Added");
}
	
}}