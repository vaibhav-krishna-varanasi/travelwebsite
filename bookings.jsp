
	<%@ include file="uheader.jsp"%>
<%@ page   import="databaseconnection.*" %>
<%@ page import="java.sql.*"%>

<%

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String userid=(String)session.getAttribute("userid");


String sss1 = "select * from hotel_information where username like '"+userid+"'";
System.out.println(sss1);

ResultSet rs1=st1.executeQuery(sss1);

        
        
        %>
		<strong><h4>View Hotel Bookings</h4></strong><br>
		<table id="tab">
	<tr><th>Hotel name<th>Check in Time
		<th>Check in Date
		<th>Checkout Time
		<th>Checkout Date
		<th>Number of Guests
		<th>Number of rooms
		<th>

	

		<%
        while(rs1.next())
	{
%>

<tr><td><%=rs1.getString("Hotel_name")%><td><%=rs1.getString("Check_in_Time")%><td><%=rs1.getString("Check_in_Date")%><td><%=rs1.getString("Checkout_Time")%><td><%=rs1.getString("Checkout_Date")%><td><%=rs1.getString("Number_of_Guests")%><td><%=rs1.getString("Number_of_rooms")%>
<td>				
<a href="#" onclick="window.open('writereview.jsp?id=<%=rs1.getString("HotelId")%>', 'newwindow', 'width=550, height=450'); return false;"><font size="" color="#0000cc">Rating</font></a> 


<%
	}

%>
</table><br><br><br>
<%

 sss1 = "select * from flights where username like '"+userid+"'";
System.out.println(sss1);

 rs1=st1.executeQuery(sss1);

        
        
        %>
		<strong><h4>View Flight Bookings</h4></strong><br>
		<table id="tab">
<tr><th>Flight number<th>Airline Name
		<th>Departure Date
		<th>Departure Time
		<th>Destination
		<th>Arrival Time
		<th>Arrival Date
		<th>Number of adults
		<th>Number of Children
<th>
		<%
        while(rs1.next())
	{
%>

<tr><td><%=rs1.getString("Flight_number")%><td><%=rs1.getString("Airline_Name")%><td><%=rs1.getString("Departure_Date")%><td><%=rs1.getString("Departure_Time")%><td><%=rs1.getString("Destination")%><td><%=rs1.getString("Arrival_Time")%>

<td><%=rs1.getString("Arrival_Date")%>
<td><%=rs1.getString("Number_of_adults")%>
<td><%=rs1.getString("Number_of_Children")%>
<td><a href="#" onclick="window.open('fwritereview.jsp?id=<%=rs1.getString("Flight_number")%>', 'newwindow', 'width=550, height=450'); return false;"><font size="" color="#0000cc">Rating</font></a> 



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