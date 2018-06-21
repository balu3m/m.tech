<%@ page  import="java.sql.*"  import="java.util.Vector" import="databaseconnection.*"  import="google.*"  import="details.*" import="javax.swing.JOptionPane"%>

<%@ include file="aheader.jsp"%>



<%!
	int i=1;
%>
<font size="+1" color="#97208b"><strong><h2>Original Data</h2>
<table cellspacing="10" cellpadding="20" width="100%">
<tr><td><h3>Sno</h3><td><h3>Category<td><h3>Name<td><h3>Manager Name<td><h3>Email<td><h3>City<td><h3>Latitude and Longitude

<%


int sno=0;
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from member  ");
while(rs.next())
{%>
		<tr><td><%=++sno%>&nbsp;&nbsp;<td><%=rs.getString("type")%>&nbsp;&nbsp;<td><%=rs.getString("rname")%> &nbsp;&nbsp;<td><%=rs.getString("mname")%><td><%=rs.getString("memail")%><td><%=rs.getString("city")%><td><%=rs.getString("lat")%>;&nbsp;&nbsp;<%=rs.getString("lon")%>
<%}
}
catch(Exception e){
System.out.println("Exception Occured");}



%>
</table>
<%@ include file="footer.jsp"%>