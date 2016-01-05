import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
public class InsertReservation extends HttpServlet{  
public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException{ 
	
	String name=request.getParameter("name");  
	String phone=request.getParameter("phone");  
	String date=request.getParameter("date");  
	String time=request.getParameter("time"); 
	String table=request.getParameter("table"); 
	String username=request.getParameter("username");
	PrintWriter out=response.getWriter();
	//String driver="com.mysql.jdbc.Driver";
	int i=0;
 	 Connection con;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
		PreparedStatement ps=con.prepareStatement("insert into reservation values(?,?,?,?,?,?)");  
		ps.setString(1,name);  
		ps.setString(2,phone);  
		ps.setString(3,date);  
		ps.setString(4,time);  
		ps.setString(5,table); 
		ps.setString(6,username);
		i=ps.executeUpdate(); 
	} catch (SQLException | ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}   
  
if(i>0) { 
   
	response.sendRedirect("ReservationSuccess.jsp?phone="+phone+"&flag=added");
}
else{
	out.println("Product Not Added");
}
	
}}