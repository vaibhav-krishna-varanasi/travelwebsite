<%@ page  import="java.sql.*" import="java.io.*" import="databaseconnection.*" %>
<%@ page  import="java.sql.*" import="java.io.*" import="CT.*" %>

<%

String fn=request.getParameter("fn");

String dn=request.getParameter("dn");
String s=request.getParameter("s");



Connection con1=databasecon.getconnection();
Statement st = con1.createStatement();
	try{
		int	i=st.executeUpdate("update flights set Flight_Status='"+s+"' where	 Flight_number='"+fn+"'	 and Departure_Date='"+dn+"' ");
	
	}
	catch(Exception e)
	{
		System.out.println(e);
		return;
	}
	response.sendRedirect("addflight.jsp?id=succ");

%>
