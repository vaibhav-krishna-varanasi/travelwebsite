
	<%@ include file="uheader.jsp"%>
<%@ page   import="databaseconnection.*" %>
<%@ page   import="CT.*" %>
<%@ page import="java.sql.*"%>

<%

String so = request.getParameter("s");
session.setAttribute("so", so);
String d= request.getParameter("d");
session.setAttribute("d", d);
String dt= request.getParameter("dt");
session.setAttribute("dt", dt);
String cod= request.getParameter("cod");
session.setAttribute("cod", cod);

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	



String sss1 = "select * from hotel where city like '"+d+"' ";
System.out.println(sss1);

ResultSet rs1=st1.executeQuery(sss1);

        
        
        %>
		<table id="tab" width="85%">
		<tr><th>Hotel Details<th>

		<%
        while(rs1.next())
	{

			ResultSet rs2=Details.get(rs1.getString("Hotel_ID"));
%>

<tr><td width="40%"><h5><%=rs1.getString("Hotel_Name")%></h5><%=rs1.getString("Address")%>
<td><table>
<tr><td>Room Type <td>No. of Beds<td>Price  <font size="-2" color="">(include tax)</font>
<%
while(rs2.next()){
%>
<tr>
<td><%=rs2.getString("Room_Type")%><td><%=rs2.getString("bed_count")%><td><%

double c=Double.parseDouble(rs2.getString("price"));
double t=Double.parseDouble(rs2.getString("tax"));

t=t/100;
t=t*c;
c=c+t;
out.println(c+" $");
%>


<td><a href="booking3.jsp?t=<%=rs2.getString("Type_ID")%>&&h=<%=rs2.getString("Hotel_id")%>&&c=<%=c%>"><font size="" color="#6600ff"><b>Book</font></a>

<%
		}
%>
</table>


<%
		}
%>

</table>
<br><br><br>
<h4>Flight Details</h4>

<%
	
 sss1 = "select * from flightsdata where Source like '"+so+"' and Destination like '"+d+"' and Departure_Date='"+dt+"' ";
System.out.println(sss1);

 rs1=st1.executeQuery(sss1);

        
        
        %>
		<table id="tab">
		<tr><th>Flight number<th>Airline Name
		<th>Departure_Date
		<th>Departure_Time
		<th>Arrival_Time
		<th>Arrival_Date
		<th>Availability
		<th>Cost <font size="-2" color="">(include tax)</font>


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
}
%> </table>
<%
}

catch(Exception e1)
{
out.println(e1.getMessage());
}

%>




</table>
	<%@ include file="footer.jsp"%>