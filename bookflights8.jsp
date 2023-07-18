
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%@ include file="uheader.jsp"%>
										       <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<font color='red'><blink>Operation Success..</blink></font>");
                                                       }
                                               %>

<h1> Payment of <%=request.getParameter("cost")%> + <%=session.getAttribute("hcost")%>$</h1><br><br>
	<TABLE id="tab" width="50%">
<form method="post" action="bookflights.jsp?id=succ">
	
    <tr><td><input required  type="text"class="form-control"  name="cn" placeholder="Card Name" size="40">
     <tr><td><input required  type="text"class="form-control"  name="cn" placeholder="Card Number" size="40">
    <tr><td><input required  type="number"class="form-control"  name="cvv" placeholder="CVV" size="40">
 
         <tr><td>   <input required  class="form-control" type="submit" value="   Pay  ">
</form>
</table>


<br><br><br>

<%@ include file="footer.jsp"%>