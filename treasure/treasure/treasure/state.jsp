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
.s{overflow:scroll; height:50px; }
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
    <td height="60" bgcolor="#5970B2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="#00FFFF" size="+1">Welcome:</font></strong>&nbsp;<strong><font color="#FFFF99" size="+1"><%=name%></font></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="#00FFFF" size="+1">Account No:</font></strong>&nbsp;<strong><font color="#FFCC99" size="+1"><%=accno%></font></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="user_login1.jsp"><strong><font color="#00FFFF" size="+1">Back</font></strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="index.html"><strong><font color="#00FFFF" size="+1">Logout</font></strong></font></strong></a></td>
</tr>
<tr>
    <td bgcolor="#C1E0FF" width="209">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/arrow.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<font size="+1">Balance 
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
    <td width="746" align="center" valign="top" bgcolor="#C1E0FF" ><br />
	<br />
	<br /><div style="overflow-x:scroll; height:400px"><form name="cp" action="#" method="get" onSubmit="return valid()">
	<table width="682" height="75"  border="1" bgcolor="#FFFFDF" align="center" cellpadding="5" cellspacing="5" style="border:1px solid #d2d2d2">
        <tr>
		    <td height="25" colspan="6" align="center"><font color="#FF0000" size="+1"><strong>Mini 
              Statement</strong></font></td>
		</tr>
		<tr>
		    <td ><font color="#660000" size="+1"><strong>Date</strong></font></td>
			<td ><font color="#660000" size="+1"><strong>Name</strong></font></td>
			<td ><font color="#660000" size="+1"><strong>Account No</strong></font></td>
			<td ><font color="#660000" size="+1"><strong>Available Balance</strong></font></td>
			<td ><font color="#660000" size="+1"><strong>Last Transaction To</strong></font></td>
			<td ><font color="#660000" size="+1"><strong>Last Transaction Amount</strong></font></td>
		
		</tr>
		<tr>
		<%
		String a=null,b=null,c=null,d=null,e=null,f=null;
		String no="no";
		try
        {
	    Connection con1= databasecon.getconnection();
	     Statement st1= con1.createStatement();	
	
         String qry1="select * from clogin where accno='"+accno+"' && date!='"+no+"'";
	   	 ResultSet rs=st1.executeQuery(qry1);
	    while(rs.next())
	     {
		 
	     a=rs.getString("date");
		 b=rs.getString("name");
		 c=rs.getString("accno");
		 d=rs.getString("balance");
		 e=rs.getString("lastt");
		 f=rs.getString("lasta");
		 
		 %>
		      <td><strong><font color="#DF5900" size="+1"><%=a%></font></strong></td>
		 <td><strong><font color="#DF5900" size="+1"><%=b%></font></strong></td>
		<td><strong><font color="#DF5900" size="+1"><%=c%></font></strong></td>
		<td><strong><font color="#DF5900" size="+1"><%=d%></font></strong></td>
		<td><strong><font color="#DF5900" size="+1"><%=e%></font></strong></td>
		<td><strong><font color="#DF5900" size="+1"><%=f%></font></strong></td>
		 </tr>
		 <%		
	    }
		%>
		
        </table></form>
		<%
		}
		 catch(Exception e4)
	     {
	     out.println(e4.getMessage());
	     }
	
		%></div>
		</td></tr>
<tr><td bgcolor="#5970B2" height="45" colspan="2" align="center"><strong><font color="#00FFFF">Chennaisunday 
      Systems Pvt Ltd.<br />Phone:9566137117</font></strong></td></tr>
</table>
</body>
</html>
