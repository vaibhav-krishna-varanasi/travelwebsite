<%@ include file="aheader.jsp"%>

									  <%
                                                       String mm=request.getParameter("id");
                                                       if(mm!=null )
                                                       {
                                                               out.println("<font  color=''><blink><h3>Registration success  !! </blink></font></h3><br>");
                                                       }
                                               %>

<center>
<form method="post" action="addhotel1.jsp" >
<h3>Hotel Registration</font></h1>
<br><br>
<table id="tab" width="60%">


		<tr><td><h5>Hotel Name<br><input class="form-control"  type="text" name="hname" required >
				<h5>City<br><input class="form-control"  type="text" name="city" required >
				<h5>Address<br><input class="form-control"  type="text" name="addr" required >

				<tr><td><input required  type="number" min=0 name="c"  placeholder="Enter Cost" size="50" 		step="0.01"class="form-control">
				<tr><td><input required  type="number" min=0 name="b"  placeholder="Enter Number of beds" size="50" class="form-control">
			<tr><td><input required  type="number" min=0 name="tax"  placeholder="Tax" size="50" 		step="0.01"class="form-control">
			
				
							
			<tr><td><div class="form_settings"><input class="form-control"  class="submit" type="submit"  value="Register" /></div>


</tr>
</table><td>

<%@ include file="footer.jsp"%>
