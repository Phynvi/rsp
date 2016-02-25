<%@ page import ="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.*" %>
<html>
<body>
<%
String flag=request.getParameter("flag");
String id=request.getParameter("id");
String name=request.getParameter("name");
String desc=request.getParameter("desc");
String image=request.getParameter("image");
String fin_image="img/"+image+".jpg";
String flagId=request.getParameter("flagId");

ArrayList<Map<String,String>> al=null;
Map<String,String> map=new HashMap<String,String>();



al=(ArrayList<Map<String,String>>)session.getAttribute("ses");
if(al==null){
	
	al=new ArrayList<Map<String,String>>();
}
//Remove items in Cart
if(flag!=null&&"Remove".equals(flag)){
	Map<String,String> removeFlag=null;
	for(Map<String,String> m:al){
		if(flagId!=null&&flagId.equals(m.get("id"))){
			removeFlag=m;
			break;			
		}
		
	}
	al.remove(removeFlag);
}else
//Add items in cart
	{
map.put("id", id);
map.put("name", name);
map.put("desc", desc);
map.put("img", fin_image);
al.add(map);
}

session.setAttribute("ses", al);
response.sendRedirect("shopping.jsp");


%>
</body>
</html>