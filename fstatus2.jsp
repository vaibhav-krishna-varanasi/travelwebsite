
	<%@ include file="uheader.jsp"%>
<%@ page   import="databaseconnection.*" %>
<%@ page import="java.sql.*"%>

<%

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
    String fn=request.getParameter("fn");

    String dd=request.getParameter("df");


String sss1 = "select * from 	flights where Flight_number like '"+fn+"' and Departure_Date like '"+dd+"' ";
System.out.println(sss1);

ResultSet rs1=st1.executeQuery(sss1);

        
        
        %>
		<strong><h4>View Flight Status</h4></strong><br>
		<table id="tab">
	<tr><th>Flight Number<th>Departure Date
		<th>Flight Status
	

		<%
        if(rs1.next())
	{
%>

<tr><td><%=rs1.getString("Flight_number")%><td><%=rs1.getString("Departure_Date")%><td><%=rs1.getString("Flight_Status")%>

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