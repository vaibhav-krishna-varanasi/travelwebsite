	<%@ include file="uheader.jsp"%>
<%@ page   import="databaseconnection.*" %>
<%@ page import="java.sql.*"%>

    <section class="w3l-subscribe-content py-5">
<%
String t= request.getParameter("t");
String h= request.getParameter("h");
		String dt=(String)session.getAttribute("dt");
double c= Double.parseDouble(request.getParameter("c"));
double c2=c/2;


%>
	<center>

		<form method="post" action="hbook2.jsp">
			<table id="tab" width="50%">
		<tr><th>No. of Guests <font size="-2" color=""><td><input required  type="number" min=1 value=1 max=30 name="g" >
		<tr><th>No. of Rooms <font size="-2" color=""><td><input required  type="number" min=1 value=1 max=5 name="r" > 
		<tr><th>Check-in Time<font size="-2" color=""><td><input required  type="time" min=1 value=1 max=5 name="cit" > 
		<tr><th>Check-out Date<font size="-2" color=""><td><input required  type="date" min="<%=dt%>" value=1 max=5 name="cod" > 
		<tr><th>Check-out Time<font size="-2" color=""><td><input required  type="time" min=1 value=1 max=5 name="cot" > 

<input required  type="hidden" name="t" value="<%=t%>">
<input required  type="hidden" name="h" value="<%=h%>">

<input required  type="hidden" name="c" value="<%=c%>">

<tr><td><td><input required  type="submit" value="Book">
		</form>
</table>
	</section>
	<%@ include file="footer.jsp"%>