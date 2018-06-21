<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>






<%
double erating=Double.parseDouble(request.getParameter("erating"));
double rating=Double.parseDouble(request.getParameter("rating"));
rating=erating+rating;
rating=rating/2;
System.out.println(rating);
						Connection con1=databasecon.getconnection();
											//System.out.println(con1);
						Statement st = con1.createStatement();
			try{
						st.executeUpdate("update member set rating='"+rating+"' where rid='"+request.getParameter("id")+"' ");
							response.sendRedirect("isearch5.jsp");
			}catch(Exception e){
System.out.println(e);
						}
						
%>
