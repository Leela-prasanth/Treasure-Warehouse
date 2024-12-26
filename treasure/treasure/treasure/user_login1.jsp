<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%

 String name=(String)session.getAttribute("na1");
 String llog=(String)session.getAttribute("llog");
 String accno=(String)session.getAttribute("acno");

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
    <td height="60" bgcolor="#5970B2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="#FFFFFF" size="+1">Welcome:</font></strong>&nbsp;<strong><font color="#FF6600" size="+1"><%=name%></font></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="#FFFFFF" size="+1">Account No:</font></strong>&nbsp;<strong><font color="#FFCC99" size="+1"><%=accno%></font></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="#FFFFFF" size="+1">Last Login:</font></strong>&nbsp;<strong><font color="#FFCC99" size="+1"><%=llog%></font></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.html"><strong><font color="#FFFFFF" size="+1">Logout</font></strong></a></td>
</tr>
<tr>
    <td bgcolor="#C1E0FF" width="250">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/arrow.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<font size="+1"><a href="bal_en.jsp?<%=accno%>">Balance 
      Enquery</a></font><br />
      <br /><br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/arrow.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<font size="+1"><a href="state.jsp?<%=accno%>">View 
      Statement</a></font><br />
      <br /><br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/arrow.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<font size="+1" ><a href="money_trans.jsp?<%=accno%>">Money 
      Transfer</a></font><br />
      <br /><br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/arrow.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<font size="+1"><a href="change_pin.jsp?<%=accno%>">Change 
      Pin No</a></font></td>
    <td bgcolor="#C1E0FF" align="center"><img src="images/payment5.jpg"></td></tr>
<tr><td bgcolor="#5970B2" height="45" colspan="2" align="center"><strong><font color="#00FFFF">Chennaisunday 
      Systems Pvt Ltd.<br />Phone:9566137117</font></strong></td></tr>
</table>
<div style="clear:both"></div>
</body>
</html>
