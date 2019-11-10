<%@page import="java.sql.*,javax.sql.*,java.io.*"%>
<html>
<head>
	<title>Demo</title>
</head>
<body>
	<%
		try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
			out.println("Connection Successful: "+con);
		}
		catch(Exception e)	
		{
			out.println("Error "+e);
		}
	%>
</body>
</html>