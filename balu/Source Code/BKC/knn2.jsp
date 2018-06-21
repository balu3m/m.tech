
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<head>
  <title>Admin</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="css/style3.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>


  <div id="table_wrapper">
  <div id="tbody">
<br>
    <table>
    <tr><td>   
	<font size="3" color="#a6fb33"><font size="4" color="#ff6600">Loading Details of POI Data.....</font></font><br><br><br>
	</table>

<table align="center" cellspacing="20">
	<tr>
	<td>	<font size="" color="#27e712">Sno
	<th>	<font size="" color="#27e712">Rating 1&nbsp;&nbsp;
	<th>	<font size="" color="#27e712">Rating 2&nbsp;&nbsp;
	<th>	<font size="" color="#27e712">Rating 3&nbsp;&nbsp;
	<th>	<font size="" color="#27e712">Distance b/w &nbsp;&nbsp;
	<th>	<font size="" color="#27e712">Item Set&nbsp;&nbsp;
	<th>	<font size="" color="#27e712">City&nbsp;&nbsp;


<%	try
{

	Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();
	
	String sss1 = "select * from  exp";
	System.out.println(sss1);
	ResultSet rs=st1.executeQuery(sss1);
	int i=0;
	while(rs.next())
	{
		%>
		<tr><td>	<font size="" color="#27e712"><%=++i%>
		<td>	<font size="" color="#27e712"><%=rs.getString(1)%>
		<th>	<font size="" color="#27e712"><%=rs.getString(2)%>
			<th>	<font size="" color="#27e712">--
			<th><font size="" color="#27e712"><%=rs.getString(3)%>
			<th>	<font size="" color="#27e712"><%=rs.getString(4)%>
			<th>	<font size="" color="#27e712"><%=rs.getString(5)%>
		<%
	}
	
	sss1 = "select * from  exp2";
	System.out.println(sss1);
	 rs=st1.executeQuery(sss1);
	
	while(rs.next())
	{
		%>
		<tr><td>	<font size="" color="#27e712"><%=++i%>
		<td>	<font size="" color="#27e712"><%=rs.getString(1)%>
		<th>	<font size="" color="#27e712"><%=rs.getString(2)%>
			<th><font size="" color="#27e712"><%=rs.getString(3)%>
			<th><font size="" color="#27e712"><%=rs.getString(4)%>
			<th>	<font size="" color="#27e712"><%=rs.getString(5)%>
			<th>	<font size="" color="#27e712"><%=rs.getString(6)%>
		<%
	}
}
catch(Exception e){}
%>


	</table>

	<br>	<br>	<br>

<br><br><br>