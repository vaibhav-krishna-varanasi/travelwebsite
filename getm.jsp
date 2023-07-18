

	<%@ include file="uheader.jsp"%>
<%@ page   import="databaseconnection.*" %>
<%@ page   import="CT.*" %>
    <section class="w3l-subscribe-content py-5">
<center>
	<h4>Mileage: <%=Details.getpoints(session.getAttribute("userid")+"")%></h4>
	</section></center>


	<%@ include file="footer.jsp"%>