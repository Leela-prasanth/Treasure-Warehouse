<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%
String accno=(String)session.getAttribute("acno");
String pinno=(String)session.getAttribute("pino");
String name=(String)session.getAttribute("na1");
String accno1=request.getQueryString();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>treasure warehouse</title>
<script type="text/javascript">
function valid()
{
var a=document.cp.mt.value;
var b=document.cp.am.value;
if(a=="")
{
alert("Enter Account No");
document.cp.mt.focus();
return false;
}
if(isNaN(a))
{
alert("Enter valid Account No");
document.cp.mt.focus();
return false;
}
if(b=="")
{
alert("Enter The Amount");
document.cp.am.focus();
return false;
}
if(isNaN(b))
{
alert("Enter amount in digits");
document.cp.am.focus();
return false;
}

}

</script>
<style type="text/css">

.b1
{
background-color: #color;
border-bottom:solid;
border-left: #FFEEEE;
border-right:solid;
border-top: #EEEEEE;
color: brown;
font-family: Verdana, Arial

}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<table width="967" height="609" align="center">
<tr bgcolor="#6666FF">
    <td height="150" background="images/bank_header2.jpeg" colspan="2"><strong><font color="#FFFFFF" size="+2">&nbsp&nbsp&nbsp;NEW 
      BANK OF INDIA</font></strong></td>
  </tr>

<tr>
    <td height="60" bgcolor="#5970B2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="#00FFFF" size="+1">Welcome:</font></strong>&nbsp;<strong><font color="#FFFF99" size="+1"><%=name%></font></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="#00FFFF" size="+1">Account No:</font></strong>&nbsp;<strong><font color="#FFCC99" size="+1"><%=accno%></font></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="user_login1.jsp"><strong><font color="#FFFFFF" size="+1" >Back</font></strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="index.html"><strong><font color="#FFFFFF" size="+1">Logout</font></strong></font></strong></a></td>
</tr>
<tr>
    <td bgcolor="#C1E0FF" width="244">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/arrow.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<font size="+1">Balance 
      Enquery</font><br />
      <br /><br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/arrow.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<font size="+1">View 
      Statement</font><br />
      <br /><br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/arrow.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<font size="+1" >Money 
      Transfer</font><br />
      <br /><br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/arrow.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<font size="+1">Change 
      Pin No</font></td>
    <td width="711" align="center" bgcolor="#C1E0FF"><form name="cp" action="money_trans1.jsp" method="get" onSubmit="return valid()">
	<table width="359" height="157" bgcolor="#FFFFDF" align="center" cellpadding="5" cellspacing="5" style="border:1px solid #d2d2d2">
          <tr> 
            <td  height="25" align="center" colspan="3"><strong><font color="#800000" size="+1">Money 
              Transfer</font></strong></td>
          </tr>
          <tr> 
            <td width="18" height="24">&nbsp;<img src="images/user.jpg"></td>
            <td width="130" align="center"><font color="#D9006C" size="+1">Account No</font></td>
            <td width="159" align="center"><input type="text" size="12" name="ac" disabled value="<%=accno%>"></td>
          </tr>
		  <tr> 
            <td width="18" height="39"><img src="images/user.gif"></td>
            <td align="center"><font color="#D9006C" size="+1">Money To</font></td>
            <td align="center"><input type="text" size="12" name="mt"></td>
          </tr>
		  <tr> 
            <td width="18" height="39">&nbsp;&nbsp;&nbsp;<img src="images/arrow.jpg"></td>
            <td align="center"><font color="#D9006C" size="+1">Amount</font></td>
            <td align="center"><input type="text" size="12" name="am"></td>
          </tr>
		   <tr> 
            <td height="27"></td>
			<td></td>
            <td  align="center"><input type="submit" name="sub" value="send" class="b1"></td>
			   
          </tr>
        </table></form></td></tr>
<tr><td bgcolor="#5970B2" height="45" colspan="2" align="center"><strong><font color="#00FFFF">Chennaisunday 
      Systems Pvt Ltd.<br />Phone:9566137117</font></strong></td></tr>
</table>
</body>
</html>
