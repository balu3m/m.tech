<%@ page  import="java.sql.*"  import="java.util.Vector" import="databaseconnection.*"  import="google.*"  import="details.*,BKC.*" import="javax.swing.JOptionPane"%>

<%@ include file="uheader.jsp"%>
<%!
	int i=0;
%>
<% 
String sq1="";
String city=(String)request.getParameter("city");
String type=(String)request.getParameter("type");

String sql="select * from member where rid like '%"+type+"%' and city='"+city+"' order by rating ";
System.out.println(sql);
%>
<font size="+2" color=""><b>
<h2>BKC Results</h2>
<table cellspacing="10" cellpadding="10" width="80%" >
<tr><td><u>ID<td><u>Name<td><u>About<td><u>View on Map

<%


int sno=0;

Connection con = databasecon.getconnection();
Statement st=con.createStatement();


ResultSet rs=st.executeQuery(sql);
while(rs.next())
{%>
		<tr><td><%=rs.getString(1)%><td><%=rs.getString(2)%><td><%=rs.getString("about")%></td>
		<td>
	<a href="isearch3.jsp?id=<%=rs.getString(1)%>&&lat=<%=rs.getString("lat")%>&&lon=<%=rs.getString("lon")%>" target="_blank"> <img src="images/Reg.png" width="100" alt="" height="50"/></a></tr>
<%}

%>
</table>
<%@ include file="footer.jsp"%>