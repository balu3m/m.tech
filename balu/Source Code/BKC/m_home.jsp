
<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="databaseconnection.*" import="CT.*"  import="javax.swing.JOptionPane"%>


<%@ include file="mheader.jsp"%>

	                  <%
                                                       String message=request.getParameter("id");
                                                       if(message!=null && message.equalsIgnoreCase("s1"))
                                                       {
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("s2"))
                                                       {
                                                       }

			    %>


</script>

<h2>Welcome <%=session.getAttribute("rname")%>...</h1>
<%
String[] det=Details.main((String)session.getAttribute("remail"));
%>
<br><br><br><br><br><br><br><br><br><br><br>


<%@ include file="footer.jsp"%>