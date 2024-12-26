<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%
String req=request.getQueryString();
     String acc=null,pin=null; 
		  ResultSet rs=null;
		     
		  
      try
        {
	    Connection con= databasecon.getconnection();
	     Statement st= con.createStatement();	
	
         String qry="select * from accnum";
	   	 rs=st.executeQuery(qry);
	
	     while(rs.next())
	    {
	acc=rs.getString("accno");
	pin=rs.getString("pinno");
	    }
	int ac = Integer.parseInt(acc);
	int pi = Integer.parseInt(pin);
	int s=ac+1;
	int s1=pi+1;
	String ac1 = Integer.toString(s);
	session.setAttribute("accno",ac1);
	String pi1 = Integer.toString(s1);
	    
	
	    try
         {
	      Connection con1= databasecon.getconnection();
	      Statement st1= con1.createStatement();	
	
          String qry1="update accnum set accno='"+ac1+"',pinno='"+pi1+"'";
	      st1.executeUpdate(qry1);
         try
         {
	     Connection con2= databasecon.getconnection();
	     Statement st2= con2.createStatement();	
	
         String qry2="update account set accno='"+ac1+"',pinno='"+pi1+"' where reqno='"+req+"'";
     	 st2.executeUpdate(qry2);
	     response.sendRedirect("create_acc1.jsp");
	     }
	     catch(Exception e3)
	     { 
	     out.println(e3.getMessage());
	     }
	     }
	    catch(Exception e2)
	    {
	      out.println(e2.getMessage());
	    }
	   
	   
	   }
	  catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
	   
	   
	  
%>


