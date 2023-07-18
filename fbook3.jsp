<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*"%>
<%@ include file="uheader.jsp"%>
										       <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<font color='red'><blink>Operation Success..</blink></font>");
                                                       }
													   String userid=(String)session.getAttribute("userid");
                                               %>

Total Cost :<%=request.getParameter("cost")%> <br>
<% 
double d=Double.parseDouble(request.getParameter("cost"));
String red=request.getParameter("red");
if(red=="no"){

}else{
d=d-200l;
}


%>
Redeem Amount: 200

<%

%>
<h1> Payment of <%=d%> $</h1><br><br>
	<TABLE id="tab" width="50%">
<form method="post" action="bookflights.jsp?id=succ">
	
    <tr><td><input required  type="text"class="form-control"  name="cn" placeholder="User Name" size="40">
    <tr><td><input required  type="text"class="form-control"  name="cn" placeholder="Email" size="40">
    <tr><td><input required  type="text"class="form-control"  name="cn" placeholder="Contact" size="40">
    <tr><td><input required  type="text"class="form-control"  name="cn" placeholder="Name of the Card" size="40">
     <tr><td><input required  type="text"class="form-control"  name="cn" placeholder="Card Number" size="40">
     <tr><td><input required  type="text"class="form-control"  name="cn" placeholder="Expiry Date" size="40">
    <tr><td><input required  type="number"class="form-control"  name="cvv" placeholder="CVV" size="40">
 
         <tr><td>   <input required  class="form-control" type="submit" value="   Pay  ">
</form>
</table>


<br><br><br>

<%@ include file="footer.jsp"%>