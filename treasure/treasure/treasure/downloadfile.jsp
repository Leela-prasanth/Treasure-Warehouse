<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title></title>
<script language="JavaScript">

</script>
</head>
<body>
<%
	
	String a=request.getQueryString();
	//System.out.println(a);
	Blob file= null;
	
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
		String sql=null;
	 sql = "select prooffile from account where reqno ='"+a+"'";
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver").newInstance();

		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/treasure","root","admin");
		ps = con.prepareStatement(sql);
		
		rs = ps.executeQuery();
		rs.next();
		file = rs.getBlob(1);
	}
	
	catch(Exception e)
	{
		out.println("Exception :"+e);
	}
	finally
	{
		if(con != null)
			con.close();
		if(ps != null)
			ps.close();
		if(rs != null)
			rs.close();
	}
	session.setAttribute("resumeBlob",file);

   response.sendRedirect("view_proof.jsp");

%>


</body>
</html>