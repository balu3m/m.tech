

<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%@ include file="uheader.jsp"%>


<form method="post" name="ff" action="isearch4.jsp" >


<%
String lat=request.getParameter("lat");
String lon=request.getParameter("lon");

String id=request.getParameter("id");
Connection con = databasecon.getconnection();
Statement st=con.createStatement();


String s="select * from member where rid='"+id+"' ";
ResultSet rs=st.executeQuery(s);

%>
<input type="hidden" name="id" value="<%=id%>"> 
<input type="hidden" name="lat" value="<%=lat%>"> 
<input type="hidden" name="lon"   value="<%=lon%>"> 






											 




<!DOCTYPE html>
<html>
<head>
<script
src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDAkjJOa-Qj3Ncv13K5W4iH3sjH1sc_UPg&sensor=true">
</script>

<script>



function initialize()
{
var lati=document.ff.lat.value;
var lon=document.ff.lon.value;
var myCenter=new google.maps.LatLng(lati,lon);
var mapProp = {
  center: myCenter,
  zoom:15,
  mapTypeId: google.maps.MapTypeId.ROADMAP
  };

var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
  position: myCenter,
  title:'Click to zoom'
  });

marker.setMap(map);

// Zoom to 9 when clicking on marker
google.maps.event.addListener(marker,'click',function() {
  map.setZoom(9);
  map.setCenter(marker.getPosition());
  });
}
google.maps.event.addDomListener(window, 'load', initialize);









</script>
</head>
<body>
<br>

<table>
<tr>
	<td><div id="googleMap" style="width:980px;height:410px;"></div></td>
</tr>
</table>
<h4>
<%
if(rs.next())
{

%>
<br><br>
<table width="50%">
<tr><td align="right"><h3>Name:&nbsp;&nbsp;<td><h3><%=rs.getString("rname")%>
<tr><td align="right"><h3>Category:&nbsp;&nbsp;<td><h3><%=rs.getString("type")%>
<tr><td align="right"><h3>City:&nbsp;&nbsp;<td><h3><%=rs.getString("city")%>
<tr><td align="right"><h3>Zip:&nbsp;&nbsp;<td><h3><%=rs.getString("zip")%>

<input type="hidden" name="erating"   value="<%=rs.getString("rating")%>"> 
<%

}

%>
</table>
<br><br>
Submit your rating on this
<br>
 

<fieldset class="rating">
    <input type="radio" required id="star5" name="rating" value="10" /><label class = "full" for="star5" title="Awesome - 10 stars"></label>
    <input type="radio" id="star4half" name="rating" value="9" /><label class="half" for="star4half" title="Pretty good - 9 stars"></label>
    <input type="radio" id="star4" name="rating" value="8" /><label class = "full" for="star4" title="Very good - 8 stars"></label>
    <input type="radio" id="star3half" name="rating" value="7" /><label class="half" for="star3half" title="Good 7 stars"></label>
    <input type="radio" id="star3" name="rating" value="6" /><label class = "full" for="star3" title="Just Good 6 stars"></label>
    <input type="radio" id="star2half" name="rating" value="5" /><label class="half" for="star2half" title="Just Fine 5 stars"></label>
    <input type="radio" id="star2" name="rating" value="4" /><label class = "full" for="star2" title="Bad 4 stars"></label>
    <input type="radio" id="star1half" name="rating" value="3" /><label class="half" for="star1half" title="Poor 3 stars"></label>
    <input type="radio" id="star1" name="rating" value="2" /><label class = "full" for="star1" title="Very Poor 2 star"></label>
    <input type="radio" id="starhalf" name="rating" value="1" /><label class="half" for="starhalf" title="Worst 1 stars"></label>
</fieldset>

<br><br>

<h2>

<input type="submit" value="Submit Rating">

</form>
<%@ include file="footer.jsp"%>

