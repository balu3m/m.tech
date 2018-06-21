
<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="databaseconnection.*" import="details.*"  import="javax.swing.JOptionPane"%>


<%@ include file="uheader.jsp"%>
<h2>Item Search: </h2>
<h4>Search by hotel name or type</h4>
<div class="form-group">
	  <br>	  <br>	  <br>	  <center>
	  <form method="post" action="isearch2.jsp">
		<table width="50%">
		<tr>
			<td><input type="text" name="keys" required placeholder="Item Search"  class="form-control"></td>
		</tr>
		</table>
	  </form>
<br>	  <br>	  <br>	  <br>	  <br>	  <br>	  <br>
</div>
<%@ include file="footer.jsp"%>