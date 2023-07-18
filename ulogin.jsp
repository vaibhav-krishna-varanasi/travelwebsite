
<%@ page   import="databaseconnection.*" %>
<%@ page import="java.sql.*"%>

<%
String a = request.getParameter("uid");
String b= request.getParameter("pwd");
String name=null,u=null,test2=null;

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
Statement st2 = con1.createStatement();

	Statement st3 = con1.createStatement();




String sss1 = "select * from users where password=AES_ENCRYPT('"+b+"','1234') && user_name='"+a+"'  ";
System.out.println(sss1);

ResultSet rs1=st1.executeQuery(sss1);

        
      ResultSet rs2=null;  
        
        if(rs1.next())
	{
			rs2=st2.executeQuery("select sum(Miles_travelled) from account_travel_history where stz='new' and User_name='"+a+"' ");
			rs2.next();
			int c=rs2.getInt(1);

			if(c>=25000){
			st3.executeUpdate("update rpoints set points=points+500 where User_name='"+a+"' ");
						st3.executeUpdate("update account_travel_history set stz='done' where User_name='"+a+"' ");
			}

		session.setAttribute("userid", a);
		session.setAttribute("pwd", b);

		
		
		response.sendRedirect("u_home.jsp");
		}else{
		response.sendRedirect("user.jsp?id=fail");
		}

}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>