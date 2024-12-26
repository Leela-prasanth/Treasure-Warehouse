<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%
String na=(String)session.getAttribute("na");
String acno=(String)session.getAttribute("accno");
String a="no";
String b="1000";
 try 
		  {
		  //System.out.println(ac1);
		  Connection con4=databasecon.getconnection();
		 	
	
PreparedStatement psmt1=con4.prepareStatement("insert into clogin(date,name,accno,lastt,lasta,balance) values(?,?,?,?,?,?)");
psmt1.setString(1,a);
psmt1.setString(2,na);
psmt1.setString(3,acno);
psmt1.setString(4,a);
psmt1.setString(5,a);
psmt1.setString(6,b);

          psmt1.executeUpdate();
		  response.sendRedirect("view_new_req.jsp");
		  }
	     catch(Exception e4)
	     {
	     out.println(e4.getMessage());
	     }
		 
		 %>