<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%
		  
String ac =(String)session.getAttribute("acno");
System.out.println(ac);
String np = request.getParameter("np");
System.out.println(np);
	    try
         {
	      Connection con= databasecon.getconnection();
	      Statement st= con.createStatement();	
	
          String qry="update account set pinno='"+np+"' where accno='"+ac+"'";
	      st.executeUpdate(qry);
        response.sendRedirect("index.html?pin no chaged");
	     }
	     catch(Exception e3)
	     { 
	     out.println(e3.getMessage());
	     }
	     
%>


