<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page   import="databaseconnection.*" %>
<%@ page   import="CT.*" %>

<html>
<head>

<%
try{
int id=0;
Connection ccc=databasecon.getconnection();
	Statement ss = ccc.createStatement();
		
	


ResultSet rs=null;

PreparedStatement ps=null;

	String name = request.getParameter("name");
	String uid = request.getParameter("uid");
	String email = request.getParameter("email");

	String addr = request.getParameter("addr");
	String pwd = request.getParameter("pwd");	

	String cname = request.getParameter("cname");	
	String cn = request.getParameter("cn");	
	String ed = request.getParameter("ed");	

			
			ps=ccc.prepareStatement("insert into  users values(?,AES_ENCRYPT(?,'1234'),?,?,?)");

			ps.setString(1,uid);
			ps.setString(2,pwd);
			ps.setString(3,name);
			ps.setString(4,addr);
		ps.setString(5,email);
	
		ps.executeUpdate();	
	

		ps=ccc.prepareStatement("insert into  credit_card_information values (?,?,?,?)");

			ps.setString(1,uid);
			ps.setString(2,cname);
			ps.setString(3,cn);
			ps.setString(4,ed);
	ps.executeUpdate();


	
		ps=ccc.prepareStatement("insert into  rpoints values (?,?)");

			ps.setString(1,uid);
			ps.setDouble(2,0);

			ps.executeUpdate();

   	response.sendRedirect("signup.jsp?id=succ");
			
		

}

catch(Exception ex){

out.println("Error in connection : "+ex);

}




%>
       
