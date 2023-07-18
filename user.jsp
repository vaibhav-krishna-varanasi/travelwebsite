
	<%@ include file="header.jsp"%>
<%
    String message=request.getParameter("id");
    if(message!=null && message.equalsIgnoreCase("fail")){
    out.println("<script type=text/javascript>alert('Sorry, Login Fail')</script>");
	}
 %>
	

    <section class="w3l-subscribe-content py-5">
        <div class="container py-md-4 py-3 text-center">
            <div class="row my-lg-4 mt-4">
                <div class="col-lg-9 col-md-10 mx-auto">
                    <div class="subscribe mx-auto">
                        <div class="header-section text-center mx-auto">
                            <h3 class="w3l-hnytitle mb-4">User Login</h3>
                        </div>
                        <form action="ulogin.jsp" method="post" class="subscribe-wthree pt-2 mt-5">
                            <div class="d-md-flex flex-wrap subscribe-wthree-field">
							<table width="100%"><tr><td>                                <input class="form-control" type="text" placeholder="Enter your Username" name="uid"
                                    required="">
<tr>                         <td><input class="form-control" type="password" placeholder="Enter your password..." name="pwd"
                                    required="">



<tr>                              <td align="right">  <button class="btn btn-style btn-primary" type="submit">Login</button>
							  </table>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>



<%@ include file="footer.jsp"%>