<%@ page  import="java.sql.*"  import="java.util.Vector" import="databaseconnection.*"  import="google.*"  import="details.*,BKC.*" import="javax.swing.JOptionPane"%>

<%@ include file="aheader.jsp"%>

<%   out.println("<script type=text/javascript>alert('Loading Restaurant data'); </script>");
out.println("<script type=text/javascript>alert('Loading Hotel data'); </script>");
out.println("<script type=text/javascript>alert('Loading Bar data'); </script>");
%>
<%!
	int i=1;
%>

<h2>keyword-NNE
(keyword nearest neighbor expansion) </h3>

<tr><td><h3>By Usign Apriori Algorithm we can get data based on Rating and Distance.</h3></td></tr>
<table cellspacing="10" cellpadding="20" width="80%" align="center">

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
		<tr><td><h3><%=rs.getString(1)%><td><h3><%=rs.getString(2)%></td></tr>
<%}

%>
</table>
<a href="#" onclick="window.open('knn2.jsp', 'newwindow', 'width=710,height=580'); return false;"><h1>In Detail</h1></a> 

<%@ include file="footer.jsp"%>