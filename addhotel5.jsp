<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page   import="databaseconnection.*" %>
<%@ page   import="CT.*" %>

<html>
<head>

<%
try{

Connection ccc=databasecon.getconnection();
	Statement ss = ccc.createStatement();
		
	


ResultSet rs=null;

PreparedStatement ps=null;

	int hid = (Integer)session.getAttribute("hid");

System.out.println("---------------");
 
  int id=RandomN.main();
	
	
		System.out.println();
		ps=ccc.prepareStatement("insert into room_type(type_id, room_type, price, bed_count, tax,hotel_id) values (?,?,?,?,?,?)");

			ps.setInt(1,id);
			ps.setString(2,request.getParameter("t"));
			ps.setString(3,request.getParameter("c"));
			ps.setString(4,request.getParameter("b"));
			ps.setString(5,request.getParameter("tax")+"");
			ps.setString(6,hid+"");
			ps.executeUpdate();	

	response.sendRedirect("addhotel2.jsp?id=succ");				
}	
catch(Exception e)
	{
		System.out.println("Exception :"+e);
	}


		

%>
       
