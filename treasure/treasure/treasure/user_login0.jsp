<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%
java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy hh:mm:ss a";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
 String accno=(String)session.getAttribute("acno");
//System.out.println(accno);

String na=null,date=null,bal=null;
String a="no";

try
        {
	    Connection con1= databasecon.getconnection();
	     Statement st1= con1.createStatement();	
	
         String qry1="select * from clogin where accno='"+accno+"'";
	   	 ResultSet rs=st1.executeQuery(qry1);
	    

        while(rs.next())
	     {
	     date=rs.getString("date");
		 na=rs.getString("name");
		  bal=rs.getString("balance");
	    }
		session.setAttribute("llog",date);
		session.setAttribute("na1",na);
		
     try
        {
	    Connection con2= databasecon.getconnection();
	    PreparedStatement psmt1=con2.prepareStatement("insert into clogin(date,name,accno,lastt,lasta,balance) values(?,?,?,?,?,?)");
psmt1.setString(1,strDateNew1);
psmt1.setString(2,na);
psmt1.setString(3,accno);
psmt1.setString(4,a);
psmt1.setString(5,a);
psmt1.setString(6,bal);

          psmt1.executeUpdate();
		   response.sendRedirect("user_login1.jsp");
		   }
	     catch(Exception e4)
	     {
	     out.println(e4.getMessage());
	     }
		 
         }
          catch(Exception e3)
	     {
	     out.println(e3.getMessage());
	      }       
         
	   %>