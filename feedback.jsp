
<%@ include file="uheader.jsp"%>


				      <%
                                                       String m=request.getParameter("m");
                                                      
                                            
                                               %>

 <form name="reg" action="feedback1.jsp" method="post"   >
					                  <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null&&!id.equals("fail") )
                                                       {
                                                               out.println("<blink><h4>Thank you for your feedback !</font></h2> <br>");
                                                       }%>

				

<center><h2> Feedback</h2></center>
<br><br>

						<table id="tab" ALIGN="CENTER" width="60%">

						<tr><th>
						Feedback
						<textarea name="f" rows="" cols="" class="form-control" required></textarea>
		<tr>
		
		<th>Rating

					<input type="range" name="r" class="form-control"  min=0 value=1 max=5 required>
					
<tr>
	<td><input type="submit" value="Submit"  size="20" class="form-control">
</td>
</tr>
</table>

					
					</form>
		
<br><br><br>
					</fieldset>


<%@ include file="footer.jsp"%>