import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
public class Admin_DelReservation extends HttpServlet{  
public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException{ 
	String phone=request.getParameter("phone");  
	
	PrintWriter out=response.getWriter();
	
 	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
		Statement st = con.createStatement();
		String sql="delete from reservation WHERE phone='"+phone+"'";		     
		st.executeUpdate(sql); 
		response.sendRedirect("admin_reservation.jsp");
	} catch (SQLException | ClassNotFoundException e) {
		// TODO Auto-generated catch block
		
	}  
      
 
}}