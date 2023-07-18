<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="CT.*"%>
<%@ include file="uheader.jsp"%>


					                  <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null&&id.equals("succ") )
                                                       {
                                                               out.println("<blink><h4><font  color=#cc0000>Booking request sent successfully ..</font></font></h2> <br>");
                                                       }
													   else {%>
												
                                               <%}%>



										
<h1>View Hotels..</h1>

<%
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	Statement st2 = con1.createStatement();

	st = con1.createStatement();

	
	ResultSet rs=null;
	rs=st.executeQuery("select * from hotel ");


%>	


<section class="w3l-team-main" id="team">

      <div class="container py-lg-5">

		

		  <div class="row team-row mt-md-5 mt-4">
<%

while(rs.next())
	{


		%>


			  
			  <div class="col-lg-3 col-6 team-wrap">
                  <div class="team-member text-center">
                      <a href="viewservices.jsp?hid=<%=rs.getString("hotel_id")%>" class="team-title">
					  <div class="team-img">
                         
						  <img src="assets/images/team1.jpg"alt="" class="radius-image">
                      </div>
					    <%=rs.getString("hotel_name")%></a>
                      <p><%=Details.getAddress(rs.getString("hotel_id"))%></p>
                     </div>
              </div>

			  		 
                  </div>
              </div>
        

        
<%}

%>
	</div>
</div>

</section>



<br><br>


<%@ include file="footer.jsp"%>