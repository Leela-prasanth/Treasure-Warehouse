<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<html>
<head>
<title>treasure</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String ac=(String)session.getAttribute("dac");
String am=(String)session.getAttribute("dam");
String bal=null,lid=null;
try
        {
	     Connection con1= databasecon.getconnection();
	     Statement st1= con1.createStatement();	
	
         String qry1="select * from clogin where accno='"+ac+"'";
	   	 ResultSet rs1=st1.executeQuery(qry1);
	     
	     while(rs1.next())
	    {
	     bal=rs1.getString("balance");
		 lid=rs1.getString("lid");
	    }
       int a = Integer.parseInt(bal);
	   int b = Integer.parseInt(am);
	   int s=a+b;
	   String s1 = Integer.toString(s);
        // System.out.println(s1);
		 
		 try
         {
	     Connection con2= databasecon.getconnection();
	     Statement st2= con2.createStatement();	
	
         String qry2="update clogin set  balance='"+s1+"' where accno='"+ac+"' && lid='"+lid+"' ";
     	 st2.executeUpdate(qry2);
	     response.sendRedirect("deposit.jsp?message=success");
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
		 
		 %>
</body>
</html>
