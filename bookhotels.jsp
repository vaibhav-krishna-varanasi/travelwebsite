
	<%@ include file="uheader.jsp"%>
<%
    String message=request.getParameter("id");
    if(message!=null && message.equalsIgnoreCase("succ")){
    out.println("<script type=text/javascript>alert('Transaction completed successfully !! ')</script>");
	}
 %>
	

<section class="w3l-subscribe-content py-5">
<center>        
                            <h3 class="w3l-hnytitle mb-4">Book Hotels</h3>
                        <form action="bookhotels2.jsp" method="post" class="subscribe-wthree pt-2 mt-5">
                         <center>
							<table width="60%">
							<tr><td><input class="form-control" type="text" placeholder="Enter Destination" name="d" required="">
							<tr><td>Date of Check in<input class="form-control" type="date" placeholder="Date of Check in" name="dt" required="">




<tr>                              <td align="right">  <button class="btn btn-style btn-primary" type="submit">Search Hotels</button>
							  </table>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>



<%@ include file="footer.jsp"%>