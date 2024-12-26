<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%
String req=request.getQueryString();
        
	   String rej="app-rejected";
	   try
    {
	Connection con3= databasecon.getconnection();
	Statement st3= con3.createStatement();	
	
    String qry3="update account set accno='"+rej+"',pinno='"+rej+"' where reqno='"+req+"'";
	st3.executeUpdate(qry3);
	response.sendRedirect("view_new_req.jsp");
	}
	   catch(Exception e3)
	   {
	     out.println(e3.getMessage());
	   }
	   
%>


