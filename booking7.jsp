
<%@ page   import="databaseconnection.*" %>
<%@ page import="java.sql.*"%>

<%
String f= request.getParameter("f");
String dd= request.getParameter("d");


double c= Double.parseDouble(request.getParameter("c"));
double c2= Double.parseDouble(request.getParameter("c2"));


double a= Double.parseDouble(request.getParameter("a"));
double ch= Double.parseDouble(request.getParameter("ch"));

double t_m=a+ch;

double t_c=a*c+ch*c2;


String so=(String)session.getAttribute("so");
String pwd=(String)session.getAttribute("pwd");String userid=(String)session.getAttribute("userid");

String d=(String)session.getAttribute("d");

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
Statement st2 = con1.createStatement();
	

String sss1 = "select * from flightsdata where Flight_number like '"+f+"' and Departure_Date like '"+dd+"' ";
System.out.println(sss1);

ResultSet rs1=st1.executeQuery(sss1);

                
while(rs1.next())
{

String sql="insert into flights values('"+rs1.getString("Flight_number")+"', '"+rs1.getString("Airline_Name")+"', '"+rs1.getString("Departure_Date")+"', 'Not Arrived', '"+rs1.getString("Departure_Time")+"', '"+rs1.getString("Source")+"', '"+rs1.getString("Destination")+"', '"+rs1.getString("Arrival_Time")+"', '"+rs1.getString("Arrival_Date")+"', '"+rs1.getString("Air_miles")+"', '"+a+"', '"+ch+"', '"+rs1.getString("Flight_Duration")+"' ,'"+userid+"')";
System.out.println(sql);
st2.executeUpdate(sql);

st2.executeUpdate( "update flightsdata set Availability=Availability-"+t_m+" where Flight_number like '"+f+"' and Departure_Date like '"+d+"' ");

st2.executeUpdate( "insert into account_travel_history values('"+userid+"', '"+pwd+"', '"+rs1.getString("Air_miles")+"','"+rs1.getString("Airline_Name")+"','"+rs1.getString("Source")+"'  ,'"+rs1.getString("Destination")+"','"+rs1.getString("Departure_Date")+"') ");
		
st2.executeUpdate( "insert into account_travel_history values('"+userid+"', AES_ENCRYPT('"+pwd+"','1234'), '"+rs1.getString("Air_miles")+"','"+rs1.getString("Airline_Name")+"','"+rs1.getString("Source")+"'  ,'"+rs1.getString("Destination")+"','"+rs1.getString("Departure_Date")+"') ");
		

		}


response.sendRedirect("booking8.jsp?cost="+t_c);
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>