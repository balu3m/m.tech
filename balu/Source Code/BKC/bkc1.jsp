<%@ page  import="java.sql.*"  import="java.util.Vector" import="databaseconnection.*"  import="google.*"  import="details.*,BKC.*" import="javax.swing.JOptionPane"%>

<%@ include file="uheader.jsp"%>
<%!
	int i=1;
%>
<%
String city=(String)request.getParameter("city"); 
String type[]=request.getParameterValues("type");
session.setAttribute("type",type);
if(type.length==1){
response.sendRedirect("results1.jsp?type="+type[0]+"&&city="+city+" ");
}else{
response.sendRedirect("results2.jsp?type="+type[0]+"&&city="+city+"  ");
}

%>

<h2>KNN</h2>
<table cellspacing="10" cellpadding="20" width="80%" align="center">
<tr><td><h3>DataSet</h3></td></tr>
<%


int sno=0;

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
BestKeyword bk=new BestKeyword(); 
try{
bk.RHItemSet();
bk.RBItemSet();
bk.HBItemSet();
bk.RHBItemSet();
}
catch(Exception e){
e.printStackTrace();
}


ResultSet rs=st.executeQuery("select * from dataset");
while(rs.next())
{%>
		<tr><td>(<%=rs.getString(1)%>)</td></tr>
<%}

%>
</table>
<%@ include file="footer.jsp"%>