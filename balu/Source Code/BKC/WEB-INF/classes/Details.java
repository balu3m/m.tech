package CT;
import databaseconnection.*;
import java.sql.*;

public class  Details
{

static Connection con1=null;
static Statement st1=null;

static String[] res=new String[13];


public static String[] main(String pid) {
try{


System.out.println("------"+pid);
con1 = databasecon.getconnection();
st1 = con1.createStatement();
 String sql=null;;
sql="select * from member where memail='"+pid+"'";
System.out.println(sql);
ResultSet rs=null;
rs=st1.executeQuery(sql);

while(rs.next())
{
//System.out.println(rs.getString("user"));
	res[0]=rs.getString(1);
		res[1]=rs.getString(2);
		
		res[2]=rs.getString(3);
			res[3]=rs.getString(4);
			res[4]=rs.getString(5);
			res[5]=rs.getString(6);
			res[6]=rs.getString(7);
			res[7]=rs.getString(8);
			res[8]=rs.getString(9);
			res[9]=rs.getString(10);
			
			res[10]=rs.getString(11);
			
			res[11]=rs.getString(12);
			
			res[12]=rs.getString(14);
			
			
}
}
	catch(Exception e){
		System.out.println(e);
	}
	finally{
		try{
		con1.close();
		st1.close();
//		rs.close();
		}
		catch(Exception e){
		System.out.println(e);
		}
	}
	return res;
}


	
	
	public static void main(String[] args) 
	{
		
String[] r=Details.main("swamy@in.ocm");
for(String rr:r)
		{
System.out.println(rr);
}



	}

}



