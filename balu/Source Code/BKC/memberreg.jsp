<%@ page import="java.sql.*"%>

<%@ page  import="java.sql.*" import="databaseconnection.*"   %>



<%!
	int i=1;
%>
<%

String rname=request.getParameter("rname");
String name=request.getParameter("name");
String email=request.getParameter("email");
String ph=request.getParameter("ph");
String mobile=request.getParameter("mobile");
String pwd=request.getParameter("pwd");
String about=request.getParameter("about");
String type=request.getParameter("type");
String latitude =request.getParameter("latitude");
String longitude=request.getParameter("longitude");
String country=request.getParameter("country");
String state=request.getParameter("state");
String piCode=request.getParameter("pinCode");
String city=request.getParameter("city").trim();

try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select count(type) from member where type='"+type+"' ");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}



%>
<%
try{
String firstLetter = String.valueOf(type.charAt(0));
String id=firstLetter+i;		
Connection con = databasecon.getconnection();
Statement st=con.createStatement();


int q= st.executeUpdate("insert into member values('"+id+"','"+rname+"','"+name+"','"+email+"', '"+ph+"', '"+mobile+"','"+about+"','"+type+"','"+latitude+"','"+longitude+"','"+city+"','"+piCode+"','"+pwd+"',10)");

if(q>0)
{
	response.sendRedirect("addmember.jsp?id=succ");
	//response.sendRedirect("register.jsp?message=succ");
}
else
	response.sendRedirect("addmember.jsp?message=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
