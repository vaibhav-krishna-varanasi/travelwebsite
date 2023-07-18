
<%@ include file="header.jsp"%>


				      <%
                                                       String m=request.getParameter("m");
                                                      
                                            
                                               %>

 <form name="reg" action="signup1.jsp" method="get"   name="pwForm" >
					                  <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null&&!id.equals("fail") )
                                                       {
                                                               out.println("<blink><h4>Account successfully registered !</font></h2> <br>");
                                                       }
													   else {%>
												
                                               <%}%>

				

<center><h2> User Signup</h2></center>
<br><br>

						<table id="tab" ALIGN="CENTER" >

						<tr><th>
						Name<td>
						<input type="text" required   name="name"    size="50" class="form-control">
						<tr><th>
						Username<td>
						<input type="text" required   name="uid"    size="50" class="form-control">
	<tr><th>
						Email<td>
						<input type="text" required   name="email"    size="50" class="form-control">


						<tr><th>
						Address <td>
						<input type="text" required   name="addr"    size="50" class="form-control">
	
						<tr><th>
								
						 Password<td>
						<input type="password" required  name="pwd" id="gpwd"  class="form-control" > 
						

					
		<tr><td><td>	
		</table>
<br> <center><h4>Card Information</h4>
		<table id="tab" ALIGN="CENTER">
<tr><td>	<input type="text" required   name="cname"    placeholder="Credit card name" size="50" class="form-control">
<tr><td>	<input type="text" required   name="cn"    placeholder="Credit card number" size="50" class="form-control">
<tr><td>	<input type="text" required   name="ed"    placeholder="Credit card expiration date " size="50" class="form-control">
</table>
		<table>
<tr>
	<td><input type="submit" value="Register"  size="20" class="form-control">
</td>
</tr>
</table>

					
					</form>
		</table>
<br><br><br>
					</fieldset>


<%@ include file="footer.jsp"%>