<%@ include file="aheader.jsp"%>

									  <%
                                                       String mm=request.getParameter("id");
                                                       if(mm!=null )
                                                       {
                                                               out.println("<font  color=''><blink><h3>Registration success  !! </blink></font></h3><br>");
                                                       }
                                               %>

<center>
<form method="post" action="updatestatus.jsp" >
<h3>Add Flight Service</font></h3>
<br><br>
<table id="tab" width="60%">


		<tr><td> Flight number<br><input class="form-control"  type="number" name="fn" required >
				<tr><td>Departure Date				
				<br><input class="form-control"  type="date" name="dn" required >
				<tr><td>	 Status<br><select name="s"  class="form-control" >
					<option value="Arrived" selected>Arrived
					<option value="Delayed">Delayed
				</select>
						
			<tr><td><div class="form settings"><input class="form-control"  class="submit" type="submit"  value="Update" /></div>


</tr>
</table><td>

<%@ include file="footer.jsp"%>
