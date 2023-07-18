
	<%@ include file="uheader.jsp"%>
<%
    String message=request.getParameter("id");
    if(message!=null && message.equalsIgnoreCase("succ")){
    out.println("<script type=text/javascript>alert('Transaction completed successfully !! ')</script>");
	}
 %>
	

    <section class="w3l-subscribe-content py-5">
        <div class="container py-md-4 py-3 text-center">
        
                            <h3 class="w3l-hnytitle mb-4">Book Hotels + Flights</h3>
                        </div>
                        <form action="booking2.jsp" method="post" class="subscribe-wthree pt-2 mt-5">
                         <center>
							<table width="60%">
							<tr><td><input class="form-control" type="text" placeholder="Enter Source" name="s" required="">
							<tr><td><input class="form-control" type="text" placeholder="Enter Destination" name="d" required="">

							<tr><td>Check-in Date<input class="form-control" type="date" placeholder="Check-in Date" name="dt" required="">
							<tr><td>Check-out Date<input class="form-control" type="date" placeholder="Check-out Date" name="cod" required="">
						
<tr>                              <td align="right">  <button class="btn btn-style btn-primary" type="submit">Search</button>
							  </table>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>



<%@ include file="footer.jsp"%>