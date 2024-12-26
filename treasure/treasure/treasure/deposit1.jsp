<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%
String ac=request.getParameter("ac");
session.setAttribute("dac",ac);
String am=request.getParameter("am");
session.setAttribute("dam",am);
//System.out.println(ac);
//System.out.println(am);
			
			try
        {
	     Connection con= databasecon.getconnection();
	     Statement st= con.createStatement();	
	
         String qry="select * from clogin where accno='"+ac+"'";
	   	 ResultSet rs=st.executeQuery(qry);
	     if(rs.next())
		 {
		 response.sendRedirect("deposit2.jsp");
		 }
		 else
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
    <td bgcolor="#C1E0FF" width="250" valign="top" align="center"><font color="#FF3300" size="+2"><br /><br /><br /><br />Account number is incorrect<br /><br /><a href="deposit.jsp"><img src="images/ok.png"></a></font></td>
    </tr>
<tr><td bgcolor="#5970B2" height="45" colspan="2" align="center"><strong><font color="#00FFFF">Chennaisunday 
      Systems Pvt Ltd.<br />Phone:9566137117</font></strong></td></tr>
</table>
<div style="clear:both"></div>
</body>
</html>		
		<%
		
		}
		}
	   
 	    catch(Exception e1)
	    {
	     out.println(e1.getMessage());
	     }
		 %>