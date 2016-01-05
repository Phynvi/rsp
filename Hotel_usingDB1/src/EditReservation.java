import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
public class EditReservation extends HttpServlet{  
public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException{ 
	String phone=request.getParameter("phone");
	PrintWriter out=response.getWriter();
	
	int i=0;
 	 Connection con;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
		Statement stmt=con.createStatement();  
		ResultSet rs=stmt.executeQuery("select * from reservation where phone='"+phone+"'");   
		if(rs.next()){
		
			out.print(rs.getString(1));
			out.print(rs.getString(3));
			out.print(rs.getString(4));
			response.sendRedirect("retrieve_update.jsp?name="+rs.getString(1)+"&date="+rs.getString(3)+"&time="+rs.getString(4)+"&phone="+phone);
		}
		
	} catch (SQLException | ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}   
	
}}