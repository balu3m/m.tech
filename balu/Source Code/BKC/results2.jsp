<%@ page  import="java.sql.*"  import="java.util.Vector" import="databaseconnection.*"  import="google.*"  import="details.*,BKC.*" import="javax.swing.JOptionPane"%>

<%@ include file="uheader.jsp"%>
<%
	int i=0;
%>
<% 
String sq1="";
String city=(String)request.getParameter("city");
String type[]=(String[])session.getAttribute("type");
int size=type.length;
for(String t1: type){
	if(i==0){
	sq1="sets like '%"+t1+"%'";
	i++;
	}else{
		
	sq1=sq1+" and sets like '%"+t1+"%'";
	
	}
}
String sql="select * from dataset where "+sq1+ "and city='"+city+"' ";
System.out.println(sql);
%>

<font size="+2" color=""><b>
<h2>BKC Results</h2>
<table cellspacing="10" cellpadding="20" width="80%" align="center">
<tr><td><u>ID<td><u>Name<td><u>Type<td><u>About<td><u>View Map

<%


int sno=0;

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();


ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;
String[] temp=null;
while(rs.next())
{%>
		<tr><td><%temp=rs.getString(1).split(",");
		if(temp.length==size){
		for(String s:temp){
		rs2=st2.executeQuery("select * from member where rid='"+s+"' ");
		if(rs2.next()){
		out.println("<tr><td>"+rs2.getString(1)+"<td>"+rs2.getString(2)+"<td>"+rs2.getString("type").toUpperCase()+"<td>"+rs2.getString("about")+"<td><a href=isearch3.jsp?id="+rs2.getString(1)+"&&lat="+rs2.getString("lat")+"&&lon="+rs2.getString("lon")+" target=_blank> <img src=images/Reg.png width=100  height=50/></a>");
		}
		}
		
		}
		%>
<tr><td><br><br><br><br><br>
		
<%}

%>
</table>
<%@ include file="footer.jsp"%>