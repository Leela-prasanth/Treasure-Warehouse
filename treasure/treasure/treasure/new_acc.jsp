<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
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
.b
{
background-color: #FFFFDF;

}


</style>

<script type="text/javascript">

function val()
{
var a=document.f1.name.value;
if(a=="")
{
alert("enter name");
document.f1.name.focus();
return false;
}
var b=document.f1.age.value;
if(b=="")
{
alert("enter age");
document.f1.age.focus();
return false;
}
if(isNaN(b))
{
alert("enter age in digits");
document.f1.age.focus();
return false;
}
if((f1.gender[0].checked=="")&&(f1.gender[1].checked=="")) 
{
alert("select gender");
return false;
}
var c = document.f1.dob.value;
 var reDate = /(?:0[1-9]|[12][0-9]|3[01])\/(?:0[1-9]|1[0-2])\/(?:19|20\d{2})/;
 var c= reDate.test(c);
if(c==false)
{
alert("Enter your Date Of Birth in the format of dd/mm/yyyy");
document.f1.dob.focus();
return false;
}

var d=document.f1.addr.value;
if(d=="")
{
alert("enter address");
document.f1.addr.focus();
return false;
}
var g = document.f1.dis.value;
if(g=="")
{
alert("Enter your district");
document.f1.dis.focus();
return false;
}
var h = document.f1.state.value;
if(h=="")
{
alert("Enter your state");
document.f1.state.focus();
return false;
}
var i = document.f1.pin.value;
if(i=="")
{
alert("Enter pincode");
document.f1.pin.focus();
return false;
}
if(isNaN(i))
{
alert("Enter pincode in numbers");
document.f1.pin.focus();
return false;
}
if(i.length!=6)
{
alert("Enter 6 digits");
document.f1.pin.focus();
return false;
}



var k = document.f1.mobile.value;
if(k=="")
{
alert("Enter mobile number");
document.f1.mobile.focus();
return false;
}
if(isNaN(k))
{
alert("Enter mobile number in numbers");
document.f1.mobile.focus();
return false;
}
if(k.charAt(0)!=9)
{
alert("Enter the correct mobile no");
document.f1.mobile.focus();
return false;
}
if(k.length!=10)
{
alert("Enter 10 digits");
document.f1.mobile.focus();
return false;
}

var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.f1.mail.value);
if(m==false)
{
alert("Please enter a valid Email Id");
document.f1.mail.focus();
return false;
}
var o = document.f1.proof.value;
if(o=="")
{
alert("upload ur proof");
document.f1.proof.focus();
return false;
}
}
function valid()
{
var b=document.sta.req.value;
if(b=="")
{
alert("enter request no");
document.sta.req.focus();
return false;
}
if(isNaN(b))
{
alert("enter valid request no");
document.sta.req.focus();
return false;
}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>

<table width="967" height="835" align="center">
<tr>
    <td height="150" background="images/bank_header2.jpeg" colspan="2"><strong><font color="#FFFFFF" size="+2">&nbsp&nbsp&nbsp;NEW 
      BANK OF INDIA</font></strong></td>
  </tr>

<tr>
    <td height="60" bgcolor="#5970B2" colspan="2"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.html"><font color="#FFFFFF" size="+1"><strong>Back</strong></font></a> 
    </td>
</tr>
<tr>
<td width="562" bgcolor="#C1E0FF" align="center" >
<form action="new_acc_reg.jsp" name="f1" method="post" onsubmit="return val();">
  <table align="center" width="515" height="428" cellspacing="5"  cellpadding="5">
  <tr>
            <td colspan="2" align="center"><strong><font color="#434387" size="+3">Registration 
              Form</font></strong></td>
  </tr>
        <tr> 
          <td width="172" height="29" align="center"><strong><font color="#3E3E7D" size="4">Name:</font></strong></td>
  <td width="306" class="field"><input type="text" name="name"></td>
  </tr>
  
  <tr>
  <td height="26"  align="center"><strong><font color="#3E3E7D" size="4">Age :</font></strong> </td>
  <td class="field"><input type="text" name="age"></td>
  </tr>
   <tr>
  <td height="26"   align="center"><strong><font color="#3E3E7D" size="4">Gender :</font></strong> </td>
  <td><input type="radio" name="gender" value="male">Male&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="female">Female</td>
  </tr>
  <tr>
  <td height="33"  align="center"><strong><font color="#3E3E7D" size="4">Date of birth :</font></strong> </td>
  <td class="field"><input type="text" name="dob" ></td>
  </tr>
  <tr>
  <td height="108"  align="center"><strong><font color="#3E3E7D" size="4">Address : </font></strong></td>
  <td class="field"><textarea name="addr" rows="5" cols="17"></textarea></td>
  </tr>
  
  <tr>
  <td height="31"    align="center"><strong><font color="#3E3E7D" size="4">District :</font></strong> </td>
  <td class="field"><input type="text" name="dis"></td>
  </tr>
  <tr>
  <td height="29" align="center"><strong><font color="#3E3E7D" size="4">State :</font></strong> </td>
  <td class="field"><input type="text" name="state"></td>
  </tr>
  <tr>
  <td height="26"  align="center"><strong><font color="#3E3E7D" size="4">Pincode :</font></strong> </td>
  <td class="field"><input type="text" name="pin"></td>
  </tr>
  
  <tr>
  <td height="24" align="center"><strong><font color="#3E3E7D" size="4">Mobile :</font></strong> </td>
  <td class="field"><input type="text" name="mobile"></td>
  </tr>
  <tr>
  <td height="24"  align="center"><strong><font color="#3E3E7D" size="4">E-Mail ID :</font></strong> </td>
  <td class="field"><input type="text" name="mail"></td>
  </tr>
   <tr>
  <td height="24"  align="center"><strong><font color="#3E3E7D" size="4">Upload Proof</font></strong> </td>
  <td class="field"><input type="file" name="proof"></td>
  </tr>
  
 
  
  <tr>
  <td align="right"><input type="reset" name="reset" value="Clear" class="b1" ></td><td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="sub" value="Register" class="b1" ></td></tr>
  </table>
  </form></td>
    <td width="393" bgcolor="#C1E0FF"  align="center" valign="top"><br /><br /><br /><br /><br /><form name="sta" action="req_sta.jsp" method="get" onSubmit="return valid()" class="b">
	<table width="293">
	<tr>
	        <td height="41" colspan="3"  align="center"><strong><font color="#00004A" size="+2">Request 
              Status</font></strong></td>
	</tr>
	<tr>
	        <td height="48"><strong><font color="#4F0000" size="+1">Enter Req No:</font></strong></td>
            <td><input type="text" size="8" name="req"></td><td><input type="submit" name="s" value="check" class="b1"></td>
	</tr>
	</table>
	
	</form><br />
	<br />
	<br />
	
	
	<img src="images/comp.jpeg">
	</td>
  </tr>
<tr><td bgcolor="#5970B2" height="45" colspan="2" align="center"><strong><font color="#00FFFF">Chennaisunday 
      Systems Pvt Ltd.<br />Phone:9566137117</font></strong></td></tr>
</table>
<div style="clear:both"></div>
</body>
</html>
