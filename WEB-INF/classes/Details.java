
package CT;
import databaseconnection.*;
import java.sql.*;
import java.util.*;

public class  Details
{

static Connection con1=null;
static Statement st1=null;



public static ResultSet get(String hid) {
		int res=0; int t=0; ResultSet rs=null;
			try{
			con1 = databasecon.getconnection();
			st1 = con1.createStatement();
			 String sql=null;; 	;
			sql="select * from room_type where Hotel_id='"+hid+"'  ";
			rs=st1.executeQuery(sql);
			
	}catch(Exception e){
	
	}
	return rs;
}


public static String getHname(String hid) {
		int res=0; int t=0; String rs="";
			try{
			con1 = databasecon.getconnection();
			st1 = con1.createStatement();
			 String sql=null;; 	;
			sql="select * from hotel where Hotel_id='"+hid+"'  ";
			ResultSet r=st1.executeQuery(sql);
			r.next();
			rs=r.getString("Hotel_Name");
			
	}catch(Exception e){
	
	}
return rs;
}

public static int  getpoints(String uid) {
		int res=0; int t=0; String rs="";
			try{
			con1 = databasecon.getconnection();
			st1 = con1.createStatement();
			 String sql=null;; 	;
			sql="select points from	rpoints  where user_name='"+uid+"'  ";
			ResultSet r=st1.executeQuery(sql);
			r.next();
			t=r.getInt(1);
			
	}catch(Exception e){
	
	}
return t;
}


	public static void main(String[] args) 
	{
	


	}

}



