
	<%@ include file="uheader.jsp"%>
<%@ page   import="databaseconnection.*" %>
<%@ page   import="CT.*" %>
<%@ page import="java.sql.*"%>
    <section class="w3l-subscribe-content py-5">

<%


String d= request.getParameter("d");

		session.setAttribute("d", d);



String dt= request.getParameter("dt");


		session.setAttribute("dt", dt);


String name=null,u=null,test2=null;

%>
<table align="right">
<tr>
	<td><h5>Sort by: 
<a href="bookhotels2_r.jsp?d=<%=d%>&&dt=<%=dt%>">Rating</a> || 
<a href="bookhotels2_c.jsp?d=<%=d%>&&dt=<%=dt%>">Cost: Low to High</a></h4>
</td>
</tr>
</table>
<br>


<%
try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	



String sss1 = "select * from hotel where city like '"+d+"' ";
System.out.println(sss1);

ResultSet rs1=st1.executeQuery(sss1);

        
        
        %>
		<center>
		<table id="tab" width="85%">
		<tr><th>Hotel Name<th>Address<th>Cost <font size="-2" color="">(include taxes)</font><th>Rating<th>

		<%
        while(rs1.next())
	{

			
%>

<tr>
<td width="40%"><h5><%=rs1.getString("Hotel_Name")%></h5><td><%=rs1.getString("Address")%>

<td><%

double c=Double.parseDouble(rs1.getString("price"));
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


<td><a href="hbook.jsp?h=<%=rs1.getString("Hotel_id")%>&&c=<%=c%>"><font size="" color="#6600ff"><b>Book</font></a>

<%
		}
%>
</table>
<%

}

catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
</section>

	<%@ include file="footer.jsp"%>