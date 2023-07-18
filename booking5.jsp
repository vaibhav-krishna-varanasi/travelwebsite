
	<%@ include file="uheader.jsp"%>
<%@ page   import="databaseconnection.*" %>
<%@ page import="java.sql.*"%>

<%
String so=(String)session.getAttribute("so");
String d=(String)session.getAttribute("d");
String dt=(String)session.getAttribute("dt");
String name=null,u=null,test2=null;

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	



String sss1 = "select * from flightsdata where Source like '"+so+"' and  Destination like '"+d+"' and Departure_Date='"+dt+"' ";
System.out.println(sss1);

ResultSet rs1=st1.executeQuery(sss1);

        
        
        %>
		<strong><h3>View Flights</h3></strong>
		<table id="tab">
		<tr><th>Flight number<th>Airline Name
		<th>Departure_Date
		<th>Departure_Time
		<th>Arrival_Time
		<th>Arrival_Date
		<th>Availability
		<th>Cost <font size="-2" color="">(include tax)</font>
		<th>

		<%
        while(rs1.next())
	{
%>

<tr><td><%=rs1.getString("Flight_number")%><td><%=rs1.getString("Airline_Name")%><td><%=rs1.getString("Departure_Date")%><td><%=rs1.getString("Departure_Time")%><td><%=rs1.getString("Arrival_Time")%><td><%=rs1.getString("Arrival_Date")%><td><%=rs1.getString("Availability")%><td><%

double c=Double.parseDouble(rs1.getString("cost"));
double t=Double.parseDouble(rs1.getString("tax"));

t=t/100;
t=t*c;
c=c+t;
out.println(c+" $");
%>


<td><a href="booking6.jsp?f=<%=rs1.getString("Flight_number")%>&&d=<%=rs1.getString("Departure_Date")%>&&c=<%=c%>"><font size="" color="#6600ff"><b>Book</font></a>

<%
		}
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
</table>
	<%@ include file="footer.jsp"%>