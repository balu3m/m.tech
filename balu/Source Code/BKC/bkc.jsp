
<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="databaseconnection.*" import="details.*"  import="javax.swing.JOptionPane"%>

<script type="text/javascript" language="JavaScript">
    function checkCheckBoxes(theForm) {
        if (document.getElementById("r").checked == false && document.getElementById("h").checked == false && document.getElementById("b").checked == false)
        {
            alert ('Please tick check box if  you want to proceed..!');
            return false;
        } else {    
            return true;
        }
    }
    //-->
    </script> 
<%@ include file="uheader.jsp"%>
<%

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select city from member group by city"); 
%>
<h2>BKC Search: </h2>
<!-- <h4>Search by hotel name or type</h4> -->
<div class="form-group"><h1><b>
	  <br>	  <br>	  <br>	  <center>
	  <form method="post" action="bkc1.jsp" onsubmit="return checkCheckBoxes(this);">
		<table width="15%">
		<tr>
			<td><select name="city" style="width:200px" required>
		<% while(rs.next()){%>
		<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
		<%}%>
		</td>
		</tr></table><br><br>
		<input type="checkbox" name="type"  id="r" value="r" >Restaurant&nbsp;&nbsp;<input type="checkbox" name="type"  id="h" value="h" >Hotel&nbsp;&nbsp;<td><input type="checkbox" name="type"  id="b" value="b" >Bar<br><br>
		<input type="submit" value="Search">
	  </form>
<br>	  <br>	  <br>	  <br>	  <br>	  <br>	  <br>
</div>
<%@ include file="footer.jsp"%>