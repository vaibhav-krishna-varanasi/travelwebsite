<%@ page import="java.sql.*,databaseconnection.*, java.util.Date, java.text.*"%>


<%

String id = request.getParameter("id");
double rating = Double.parseDouble(request.getParameter("rating"));
	
	Connection ccc=databasecon.getconnection();
	PreparedStatement ps=ccc.prepareStatement("update flightsdata set rating=(rating+"+rating+")/2 where Flight_number='"+id+"' ");

	ps.executeUpdate();

response.sendRedirect("fwritereview.jsp?id="+id+"&&m=succ");

%>