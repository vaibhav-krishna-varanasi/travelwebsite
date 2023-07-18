	<%@ include file="uheader.jsp"%>
<%@ page   import="databaseconnection.*" %>
<%@ page   import="CT.*" %>
<%@ page import="java.sql.*"%>

    <section class="w3l-subscribe-content py-5">
<%
String f = request.getParameter("f");
String d= request.getParameter("d");
double c= Double.parseDouble(request.getParameter("c"));
double c2=c/2;
int p=Details.getpoints(session.getAttribute("userid")+"");
boolean b=false;

if(p>=200){
b=true;
}

%>
Available Redeem Points : <%=p%>
	<center>

		<form method="post" action="fbook2.jsp">
			<table id="tab" width="50%">
		<tr><th>Adults <font size="-2" color="">(No. of tickets)</font><td><input type="number" min=1 class="form-control" value=1 max=10 name="a" > &nbsp;&nbsp;&nbsp;&nbsp; Cost: <%=c%>
		<tr><th>Children<font size="-2" color="">(No. of tickets)</font><td><input class="form-control" type="number" min=0 value=0 max=10 name="ch" >&nbsp;&nbsp;&nbsp;&nbsp; Cost: <%=c2%>

<% if(b) {%>
		<tr><th>You want to redeem: <td>
		
		<select name="red"  class="form-control" >
			<option value="no" selected>No
			<option value="yes">Yes
		</select>
<% } else{%>

<input type="hidden" name="red" value="no">

<% }%>

<input type="hidden" name="c" value="<%=c%>">
<input type="hidden" name="c2" value="<%=c2%>">

<input type="hidden" name="f" value="<%=f%>">
<input type="hidden" name="d" value="<%=d%>">
<tr><td><td><input type="submit" value="Book"  class="form-control" >
		</form>
</table>
	</section>
	<%@ include file="footer.jsp"%>