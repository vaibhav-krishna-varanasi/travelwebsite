	<%@ include file="uheader.jsp"%>
<%@ page   import="databaseconnection.*" %>
<%@ page import="java.sql.*"%>

    <section class="w3l-subscribe-content py-5">
<%
String t= request.getParameter("t");
String h= request.getParameter("h");
		String dt=(String)session.getAttribute("dt");
			String cod=(String)session.getAttribute("cod");
double c= Double.parseDouble(request.getParameter("c"));
double c2=c/2;


%>
	<center>

		<form method="post" action="booking4.jsp">
			<table id="tab" width="50%">
		<tr><th>No. of Guests <font size="-2" color=""><td><input type="number" min=1 value=1 max=30 name="g" >
		<tr><th>No. of Rooms <font size="-2" color=""><td><input type="number" min=1 value=1 max=5 name="r" > 
		<tr><th>Check-in Time<font size="-2" color=""><td><input type="time" min=1 value=1 max=5 name="cit" > 
		<tr><th>Check-out Date<font size="-2" color=""><td><input type="date" min="<%=dt%>" value="<%=cod%>" readonly	 max=5 name="cod" > 
		<tr><th>Check-out Time<font size="-2" color=""><td><input type="time" min=1 value=1 max=5 name="cot" > 
		<tr><th>Hotel Cost<font size="-2" color=""><td><input type="text" value="<%=c%>" name="hcost"  readonly> 

<input type="hidden" name="t" value="<%=t%>">
<input type="hidden" name="h" value="<%=h%>">

<input type="hidden" name="c" value="<%=c%>">

<tr><td><td><input type="submit" value="Hotel Book">
		</form>
</table>
	</section>
	<%@ include file="footer.jsp"%>