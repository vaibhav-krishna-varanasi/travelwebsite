
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%@ page  import="java.sql.*" import="CT.*" %>

<style> 
input[type=time] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
</style>

<%@ include file="aheader.jsp"%>


<%
String hid=request.getParameter("hid");
int count=0;
Connection con1=databasecon.getconnection();
//System.out.println(con1);
Statement st = con1.createStatement();
ResultSet rs=st.executeQuery("select * from hotel where hotel_id='"+hid+"' ");


rs.next();



%>	
<table id="tab"  width="70%"><tr><th>Hotel Name<th>City<th>Address<th>Beds<th>Price<th>Tax<th>Rating
<tr>
<td>
<%=rs.getString("hotel_name")%>
<td>
<%=rs.getString("city")%>
<td>
<%=rs.getString("address")%>



<td><font size="+1"><%=rs.getString("price")%>$
<td><font size="+1"><%=rs.getString("beds")%>
<td><font size="+1"><%=rs.getString("tax")%>
<td><font size="+1"><%=rs.getString("rating")%>

									 


</table>
</center></h5>
<%@ include file="footer.jsp"%>
