
	<%@ include file="aheader.jsp"%>
<%@ page   import="databaseconnection.*" %>
<%@ page import="java.sql.*"%>

<%

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
    String fn=request.getParameter("fn");

    String dd=request.getParameter("df");


String sss1 = "select * from 	feedback ";
System.out.println(sss1);

ResultSet rs1=st1.executeQuery(sss1);

        
        
        %><center>
		<strong><h4>View Feedback</h4></strong><br>
		<table id="tab" width="90%">
	<tr><th>Sno<th>Username
		<th width="70%">Feedback		<th >Rating
	

		<%
		int i=1;
        while(rs1.next())
	{
			i++;
%>

<tr><td><%=i%><td><%=rs1.getString("user_name")%><td><%=rs1.getString("feedback")%><td><%=rs1.getString("rating")%>

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