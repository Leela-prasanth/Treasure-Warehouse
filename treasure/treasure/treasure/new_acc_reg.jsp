<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>treasure warehouse</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript">

</script>
</head>

<body>

<%
java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
String m="on process";
Connection con=null;


PreparedStatement psmt1=null;

FileInputStream fis;

String a = request.getParameter("name");
String b = request.getParameter("age");
String c = request.getParameter("gender");
String d = request.getParameter("dob");
String e = request.getParameter("addr");
String f = request.getParameter("dis");
String g = request.getParameter("state");
String h = request.getParameter("pin");
String i = request.getParameter("mobile");
String j = request.getParameter("mail");
String k = request.getParameter("proof");
//System.out.println(k);

try{
con=databasecon.getconnection();

String f1="\\apache-tomcat-6.0.18";
String f2="\\webapps";
String f3="\\treasure";
String f4="\\proof\\";
String l = "D:\\"+f1+f2+f3+f4+k;
String sql=null;
File image=new File(l);

psmt1=con.prepareStatement("insert into account(name,age,gender,dob,addr,dis,state,pin,mobile,mail,proof,prooffile,path,date,accno,pinno) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
psmt1.setString(1,a);
psmt1.setString(2,b);
psmt1.setString(3,c);
psmt1.setString(4,d);
psmt1.setString(5,e);
psmt1.setString(6,f);
psmt1.setString(7,g);
psmt1.setString(8,h);
psmt1.setString(9,i);
psmt1.setString(10,j);
psmt1.setString(11,k);
fis=new FileInputStream(image);
psmt1.setBinaryStream(12, (InputStream)fis, (int)(image.length()));
psmt1.setString(13,l);
psmt1.setString(14,strDateNew1);
psmt1.setString(15,m);
psmt1.setString(16,m);



int s = psmt1.executeUpdate();


}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}

%>
<%
int reqno=0;
try
{
Connection con1=databasecon.getconnection();
PreparedStatement ps=con1.prepareStatement("select * from account where name='"+a+"' && age='"+b+"' && mobile='"+i+"'");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
reqno=rs.getInt(1);
}
String s = Integer.toString(reqno);
session.setAttribute("s",s);

response.sendRedirect("req_suc.jsp");
}
catch(Exception e1)
{

out.println("Error in connection : "+e1);

}

%>

</body>
</html>