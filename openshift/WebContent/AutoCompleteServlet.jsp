<%@ page import ="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.util.*" %>
<html>
<body>
<%
final ArrayList<String> products = new ArrayList<String>();
      String value = "";
	  String action = request.getParameter("action");
      String targetId = request.getParameter("id");
      StringBuffer sb = new StringBuffer();
  try{     
	 Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
	 Connection conn=DriverManager.getConnection("jdbc:mysql://127.7.209.2:3306/shop","adminS4VRAdX","HZbsqpuGp9Hz"); 
	 Statement stmt=conn.createStatement();  
	 ResultSet rs=stmt.executeQuery("select * from jsp_practise");  

	
	 while(rs.next())   {				
		products.add(rs.getString("name").toString());		
			
		Set<String> hs = new HashSet<String>();
		hs.addAll(products);
		products.clear();
		products.addAll(hs);
	}
    if (targetId != null) {
        targetId = targetId.trim();
    }

    boolean namesAdded = false;
    if (action.equals("complete")) {
        // check if user sent empty string
        if (!targetId.equals("")) {
           for(String prod:products){
                if (prod.contains(targetId)) {
                    sb.append("<composer>");
                    sb.append("<id>" +prod+ "</id>");
                    sb.append("</composer>");
                    namesAdded = true;
                }
            }
        }

        if (namesAdded) {
            response.setContentType("text/xml");
            response.setHeader("Cache-Control", "no-cache");
            response.getWriter().write("<composers>" + sb.toString() + "</composers>");
        } else {
            //nothing to show
            response.setStatus(HttpServletResponse.SC_NO_CONTENT);
        }
    }
    
        if (action.equals("lookup")) {				
        	Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        	conn=DriverManager.getConnection("jdbc:mysql://127.7.209.2:3306/shop","adminS4VRAdX","HZbsqpuGp9Hz"); 
        	stmt=conn.createStatement();  
        	rs=stmt.executeQuery("select * from jsp_practise where name='"+targetId+"'");  
        	String imgLoc = null;
        	int index=0;
        	if(rs.next())  {
        		imgLoc=rs.getString(4);
        		response.sendRedirect("shopping1.jsp?index="+index+"&id="+rs.getString(1)+"&name="+rs.getString(2)+"&desc="+rs.getString(3)+"&image="+imgLoc);				
        	}
        }
    }
    catch(Exception e){
    	
    }

%>
</body>
</html>