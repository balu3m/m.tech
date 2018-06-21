<%
					  String user=(String)session.getAttribute("email");
					  if(user ==null)
					  {
							response.sendRedirect("user.jsp?id=exp");
					  }

%>