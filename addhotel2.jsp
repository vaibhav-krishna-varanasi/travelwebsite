
<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*"%>


<%@ include file="aheader.jsp"%>

										       <%
                                                       String ser[]=(String[])session.getAttribute("ser");
                                               %>

<%
    String message=request.getParameter("id");
    if(message!=null ){
    out.println("<script type=text/javascript>alert('Room Type data updated, add another... ')</script>");
	}
 %>


<h1>Add Room Types</h1><br><br>


<form method="post" action="addhotel5.jsp">


<table align="center" cellpadding="5" id="tab" width="65%">
<tr><td><input required  type="text" name="t"  placeholder="Enter Room Type" size="50" class="form-control">
<tr><td><input required  type="number" min=0 name="c"  placeholder="Enter Cost" size="50" 		step="0.01"class="form-control">
<tr><td><input required  type="number" min=0 name="b"  placeholder="Enter Number of beds" size="50" class="form-control">
<tr><td><input required  type="number" min=0 name="tax"  placeholder="Tax" size="50" 		step="0.01"class="form-control">
<tr><td><input type="submit" value="ADD " class="form-control"> 

</table>
</form>

<br>
<center>
<table align="center" cellpadding="5" id="tab" width="65%"><tr><td>
<div class="form_settings">

<form method="post" action="addhotel.jsp?id=succ">
	<input type="submit" value="Finish"  class="form-control">
</form>

</table>



<br><br>

<%@ include file="footer.jsp"%>