
<%@ page   import="databaseconnection.*" %>
<%@ page   import="CT.*" %>
<%@ page import="java.sql.*"%>

<%
String t= request.getParameter("t");
String h= request.getParameter("h");

String dt=(String)session.getAttribute("dt");
String userid=(String)session.getAttribute("userid");
String d=(String)session.getAttribute("d");

String g= request.getParameter("g");
String r= request.getParameter("r");
String cit= request.getParameter("cit");
String cod= request.getParameter("cod");
String cot= request.getParameter("cot");

String hn=Details.getHname(h);
System.out.println(d+"____________________"+cod);

int days=Dates.get(dt,cod);

double c= Double.parseDouble(request.getParameter("c"));

c=c*days;
c = Math.round(c);

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();

String sql="insert into hotel_information values('"+h+"','"+hn+"', '"+cit+"', '"+d+"', '"+cot+"', '"+cod+"', '"+g+"', '"+r+"' , '"+userid+"' )";

System.out.println(sql);
st1.executeUpdate(sql);


response.sendRedirect("hbook3.jsp?cost="+c);
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>