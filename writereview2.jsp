<%@ page import="java.sql.*,databaseconnection.*, java.util.Date, java.text.*"%>


<%

String id = request.getParameter("id");
double rating = Double.parseDouble(request.getParameter("rating"));
	
	Connection ccc=databasecon.getconnection();
	PreparedStatement ps=ccc.prepareStatement("update hotel set rating=(rating+"+rating+")/2 where hotel_id='"+id+"' ");

	ps.executeUpdate();

response.sendRedirect("writereview.jsp?id="+id+"&&m=succ");

%>