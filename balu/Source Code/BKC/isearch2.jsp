<%@ page  import="java.sql.*"  import="java.util.Vector" import="databaseconnection.*"  import="google.*"  import="details.*" import="javax.swing.JOptionPane"%>

<%@ include file="uheader.jsp"%>



<%!
	int i=1;
%>

<h2>Search Results</h2>
<table cellspacing="10" cellpadding="20" width="80%">
<tr><td><h3>Sno</h3><td><h3>Category<td><h3>Name<td><h3>City<td><h3>View On Map

<%

String keys=request.getParameter("keys");
int sno=0;
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from member where type like '%"+keys+"%' or rname like '%"+keys+"%' ");
while(rs.next())
{%>
		<tr><td><%=++sno%><td><%=rs.getString("type")%><td><%=rs.getString("rname")%> <td><%=rs.getString("city")%><td>
	<a href="isearch3.jsp?id=<%=rs.getString(1)%>&&lat=<%=rs.getString("lat")%>&&lon=<%=rs.getString("lon")%>" target="_blank"> <img src="images/Reg.png" width="100" alt="" height="50"/></a>
<%}
}
catch(Exception e){
System.out.println("Exception Occured");}



%>
</table>
<%@ include file="footer.jsp"%>