
<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="databaseconnection.*" import="details.*"  import="javax.swing.JOptionPane"%>


<%@ include file="uheader.jsp"%>

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

<h2>Welcome <%=session.getAttribute("name")%>...</h1>


<%@ include file="footer.jsp"%>