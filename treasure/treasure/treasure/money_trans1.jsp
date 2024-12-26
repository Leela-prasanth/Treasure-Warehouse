<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%
String accno=(String)session.getAttribute("acno");
String mt=request.getParameter("mt");
//session.setAttribute("dac",ac);
String am=request.getParameter("am");
//session.setAttribute("dam",am);
//System.out.println(ac);
//System.out.println(am);
		String bal=null,lid=null;
			try
        {
	     Connection con1= databasecon.getconnection();
	     Statement st1= con1.createStatement();	
	
         String qry1="select * from clogin where accno='"+accno+"'";
	   	 ResultSet rs1=st1.executeQuery(qry1);
	     while(rs1.next())
		 {
		 lid=rs1.getString("lid");
		 }
		 }
		  catch(Exception e2)
	    {
	     out.println(e2.getMessage());
	     }
		 
			
			try
        {
	     Connection con= databasecon.getconnection();
	     Statement st= con.createStatement();	
	
         String qry="select * from clogin where accno='"+accno+"' && lid='"+lid+"'";
	   	 ResultSet rs=st.executeQuery(qry);
	     while(rs.next())
		 {
		 bal=rs.getString("balance");
		 }
		 int a = Integer.parseInt(bal);
	     int b = Integer.parseInt(am);
	       int s=a-b;
	   String s1 = Integer.toString(s);
		if(a<b)
         {
		 %>
	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>treasure warehouse</title>


<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<table width="967" height="609" align="center">
<tr bgcolor="#6666FF">
    <td height="150" background="images/bank_header2.jpeg" colspan="2"><strong><font color="#FFFFFF" size="+2">&nbsp&nbsp&nbsp;NEW 
      BANK OF INDIA</font></strong></td>
  </tr>

<tr>
    <td height="60" bgcolor="#5970B2" colspan="2"></td>
</tr>
<tr>
    <td bgcolor="#C1E0FF" width="250" valign="top" align="center"><font color="#FF3300" size="+2"><br /><br /><br /><br />You con't transfer the money<br /><br /><a href="money_trans.jsp"><img src="images/ok.png"></a></font></td>
    </tr>
<tr><td bgcolor="#5970B2" height="25" colspan="2"></td></tr>
</table>
<div style="clear:both"></div>
</body>
</html>		
		<%
		
		}
		else
		{
		try
         {
	     Connection con2= databasecon.getconnection();
	     Statement st2= con2.createStatement();	
	
         String qry2="update clogin set balance='"+s1+"',lastt='"+mt+"',lasta='"+am+"' where accno='"+accno+"' && lid='"+lid+"'";
     	 st2.executeUpdate(qry2);
	     response.sendRedirect("money_trans.jsp?message=success");
	     }
	     catch(Exception e3)
	     { 
	     out.println(e3.getMessage());
	     }
		}
	   }
 	    catch(Exception e1)
	    {
	     out.println(e1.getMessage());
	     }
		 %>