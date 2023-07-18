`<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page   import="databaseconnection.*" %>
<%@ page   import="CT.*" %>

<html>
<head>

<%
try{
int id=0;
Connection ccc=databasecon.getconnection();
	Statement ss = ccc.createStatement();
		
	


ResultSet rs=null;

PreparedStatement ps=null;

	String userid = (String)session.getAttribute("userid");
	String f = request.getParameter("f");
String r = request.getParameter("r");

			
			ps=ccc.prepareStatement("insert into  feedback values(?,?,?)");

			ps.setString(1,userid);
			ps.setString(2,f);
			ps.setString(3,r);
		
		ps.executeUpdate();	
	

   	response.sendRedirect("feedback.jsp?id=succ");
			
		

}

catch(Exception ex){

out.println("Error in connection : "+ex);

}




%>
       
