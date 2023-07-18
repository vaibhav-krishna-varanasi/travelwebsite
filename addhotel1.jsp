<%@ page  import="java.sql.*" import="java.io.*" import="databaseconnection.*" %>
<%@ page  import="java.sql.*" import="java.io.*" import="CT.*" %>

<%

String hname=request.getParameter("hname");
String city=request.getParameter("city");
String addr=request.getParameter("addr");
String c=request.getParameter("c");
String b=request.getParameter("b");
String tax=request.getParameter("tax");

int hid=RandomN.main();


session.setAttribute("hid",hid);


Connection con1=databasecon.getconnection();
Statement st = con1.createStatement();
	try{
		int	i=st.executeUpdate("insert into hotel values('"+hid+"','"+hname+"','"+city+"', '"+addr+"', '"+c+"', '"+b+"', '"+tax+"',3)");
	
	}
	catch(Exception e)
	{
		System.out.println(e);
		return;
	}
	response.sendRedirect("addhotel.jsp?id=succ");
%>
