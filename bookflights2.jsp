
	<%@ include file="uheader.jsp"%>
<%@ page   import="databaseconnection.*" %>
<%@ page import="java.sql.*"%>

<%
String s = request.getParameter("s");

String d= request.getParameter("d");

	session.setAttribute("s", s);
		session.setAttribute("d", d);



String dt= request.getParameter("dt");
String name=null,u=null,test2=null;

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	



String sss1 = "select * from flightsdata where Source like '"+s+"' and  Destination like '"+d+"' and Departure_Date='"+dt+"' ";
System.out.println(sss1);

ResultSet rs1=st1.executeQuery(sss1);

        
        
        %>
	    <section class="w3l-subscribe-content py-5">

		<table align="right">
<tr>
	<td><h5>Sort by: 
<a href="bookflights2_r.jsp?d=<%=d%>&&s=<%=s%>&&dt=<%=dt%>">Rating</a> || 
<a href="bookflights2_c.jsp?d=<%=d%>&&s=<%=s%>&&dt=<%=dt%>">Cost: Low to High</a></h4>
</td>k
</tr>
</table>
<br><br>
		<center>
		<table id="tab">
		<tr><th>Flight number<th>Airline Name
		<th>Departure_Date
		<th>Departure_Time
		<th>Arrival_Time
		<th>Arrival_Date
		<th>Availability
		<th>Cost <font size="-2" color="">(include tax)</font>
		<th>Rating		<th>

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

	double rat=0.0;
				try{
rat=rs1.getDouble("rating");
				rat=rat/5*100;
				}catch(Exception e){}
%>
<td>
  <span style="display: block; width: 65px; height: 13px; background: url(star-rating-sprite.png) 0 0;">
    <span style="display: block; width:<%=rat%>%; height: 13px; background: url(star-rating-sprite.png) 0 -13px;"></span>



<td><a href="fbook.jsp?f=<%=rs1.getString("Flight_number")%>&&d=<%=rs1.getString("Departure_Date")%>&&c=<%=c%>"><font size="" color="#6600ff"><b>Book</font></a>

<%
		}
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
</table>
</section>
	<%@ include file="footer.jsp"%>