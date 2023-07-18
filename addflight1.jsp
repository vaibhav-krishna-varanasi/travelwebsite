<%@ page  import="java.sql.*" import="java.io.*" import="databaseconnection.*" %>
<%@ page  import="java.sql.*" import="java.io.*" import="CT.*" %>

<%

String fn=request.getParameter("fn");
String an=request.getParameter("an");
String dn=request.getParameter("dn");

String dt=request.getParameter("dt");
String s=request.getParameter("s");
String d=request.getParameter("d");
String at=request.getParameter("at");
String ad=request.getParameter("ad");
String am=request.getParameter("am");
String fd=request.getParameter("fd");
String a=request.getParameter("a");

String c=request.getParameter("c");
String t=request.getParameter("t");




Connection con1=databasecon.getconnection();
Statement st = con1.createStatement();
	try{
		int	i=st.executeUpdate("insert into flightsdata values('"+fn+"','"+an+"','"+dn+"','"+dt+"','"+s+"','"+d+"','"+at+"','"+ad+"','"+am+"','"+fd+"','"+a+"','"+c+"','"+t+"',3)");
	
	}
	catch(Exception e)
	{
		System.out.println(e);
		return;
	}
	response.sendRedirect("addflight.jsp?id=succ");

%>
