<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>treasure warehouse</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body><table width="967" height="609" align="center">
<tr bgcolor="#6666FF">
    <td height="150" background="images/bank_header2.jpeg" colspan="2"><strong><font color="#FFFFFF" size="+2">&nbsp&nbsp&nbsp;NEW 
      BANK OF INDIA</font></strong></td>
  </tr>

<tr>
    <td height="30" bgcolor="#5970B2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="new_acc.jsp"><strong><font color="#FFFFFF" size="+1"><blink>Back</blink></font></strong></a> 
    </td>
</tr>
<tr>
<td bgcolor="#C1E0FF">
   
 <form  name="f1" action="#"  method="get" >
<table  align="center" width="907" height="121" border="1" >
    <tr bgcolor="#FFCEB7"> 
      <td height="40" colspan="12" align="center"><font color="#110022" size="+3"><strong>Account Details</strong></font></td>
    </tr>
    <tr  bgcolor="#FFE1FF"> 
	   
        <td width="71" height="39" align="center"><font color="#110022" size="+1"><strong>Date</strong></font></td>
     
        <td align="center" width="94"> <font color="#110022" size="+1"><strong>Name</strong></font></td>
		 <td align="center" width="92"> <font color="#110022" size="+1"><strong>Age</strong></font></td>
		  <td align="center" width="96"> <font color="#110022" size="+1"><strong>Gender</strong></font></td>
		<td align="center" width="94"> <font color="#110022" size="+1"><strong>Date of Birth</strong></font></td>
		 <td align="center" width="67"> <font color="#110022"  size="+1"><strong>Contact No:</strong></font></td>
		  <td align="center" width="58"> <font color="#110022"  size="+1"><strong>Email Id</strong></font></td>
		  		  <td align="center" width="62"> <font color="#110022"  size="+1"><strong>Address</strong></font></td>
				  		  <td align="center" width="56"> <font color="#110022"  size="+1"><strong>State</strong></font></td>
        		  <td align="center" width="70"> <font color="#110022"  size="+1"><strong>Account No</strong></font></td>     	   
	               <td align="center" width="69"> <font color="#110022"  size="+1"><strong>Pin No</strong></font></td> 
    </tr>
	<%

String req=request.getParameter("req");
 
String a=null,b=null,c=null,d=null,e=null,f=null,g=null,h=null,i=null,j=null,k=null;
int reqno=0;	
ResultSet rs1=null;
String x="on process";
try
{
	Connection con1= databasecon.getconnection();
	Statement st1= con1.createStatement();	
	
    String qry1="select * from account where reqno='"+req+"'";
		rs1=st1.executeQuery(qry1);
	   while(rs1.next())
	{
	a=rs1.getString("date");
	b=rs1.getString("name");
	c=rs1.getString("age");
	d=rs1.getString("gender");
	e=rs1.getString("dob");
	f=rs1.getString("mobile");
	g=rs1.getString("mail");
	h=rs1.getString("addr");
	i=rs1.getString("state");
	j=rs1.getString("accno");
	k=rs1.getString("pinno");
	
	%>	 
     <tr bgcolor="#C1E0FF"> 
        <td height="32" align="center"><strong><font color="#FF0000" size="2"><%=a%></font></strong> 
        </td>
	
	   <td align="center"><strong> <font color="#FF0000" size="2"><%=b%></font></strong>  </td>
	  
	  <td align="center"> <strong><font color="#FF0000" size="2"><%=c%> </font></strong> </td>
	  <td align="center"> <strong><font color="#FF0000" size="2"><%=d%> </font></strong> </td>
       
      <td align="center"><strong><font color="#FF0000" size="2"> <%=e%></font></strong>  </td>
	  <td align="center"><strong><font color="#FF0000" size="2"><%=f%></font></strong> </td>
	 <td align="center"> <strong><font color="#FF0000" size="2"><%=g%> </font></strong> </td>
       
      <td align="center"><strong><font color="#FF0000" size="2"> <%=h%></font></strong>  </td>
	  <td align="center"><strong><font color="#FF0000" size="2"><%=i%></font></strong> </td>
	<td align="center"><strong><font color="#FF0000" size="2"> <%=j%></font></strong>  </td>
	  <td align="center"><strong><font color="#FF0000" size="2"><%=k%></font></strong> </td>
	
	   <%
	   session.setAttribute("na",b);
	   }
	    
	   }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
 %>

</table>
</form>




</td></tr>
<tr><td bgcolor="#5970B2" height="45" colspan="2" align="center"><strong><font color="#00FFFF">Chennaisunday 
      Systems Pvt Ltd.<br />Phone:9566137117</font></strong></td></tr>
</table>
<div style="clear:both"></div>
</body>
</html>
