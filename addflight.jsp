<%@ include file="aheader.jsp"%>

									  <%
                                                       String mm=request.getParameter("id");
                                                       if(mm!=null )
                                                       {
                                                               out.println("<font  color=''><blink><h3>Registration success  !! </blink></font></h3><br>");
                                                       }
                                               %>

<center>
<form method="post" action="addflight1.jsp" >
<h3>Add Flight Service</font></h3>
<br><br>
<table id="tab" width="60%">


		<tr><td> Flight number<br><input class="form-control"  type="number" name="fn" required >
			<tr><td>	 Airline Name<br><input class="form-control"  type="text" name="an" required >
				<tr><td>	 Departure Date<br><input class="form-control"  type="date" name="dn" required >
				
				<tr><td>	 Departure Time<br><input class="form-control"  type="time" name="dt" required >
				<tr><td>	 Source<br><input class="form-control"  type="text" name="s" required >
				<tr><td>	 Destination<br><input class="form-control"  type="text" name="d" required >
				<tr><td>	 Arrival Time<br><input class="form-control"  type="time" name="at" required >
				<tr><td>	 Arrival Date<br><input class="form-control"  type="date" name="ad" required >
				<tr><td>	 Air miles<br><input class="form-control"  type="number" name="am" required >
				<tr><td>  Flight Duration<br><input class="form-control"  type="text" name="fd" required >
			<tr><td>  Availability<br><input class="form-control"  type="number" name="a" required >
<tr><td>  Cost per person<br><input class="form-control"  type="number" 		step="0.01" name="c" required >
<tr><td>  Tax<br><input class="form-control"  type="number"  		step="0.01" name="t" required >

	
						
			<tr><td><div class="form settings"><input class="form-control"  class="submit" type="submit"  value="Add" /></div>


</tr>
</table><td>

<%@ include file="footer.jsp"%>
