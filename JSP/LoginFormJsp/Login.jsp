<%@page import="javax.sql.*, java.sql.*,java.io.*,java.util.*"%>
<html>
<head>
	<title>Details</title>
</head>
<body>
	<%
		try
		{
							PrintWriter pw=response.getWriter();
				pw.println("Hii"); 
			Class.forName("oracle.jdbc.OracleDriver");//load driver
			Connection con=
			DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
			
			response.setContentType("text/html");//MIME
			int regNo=Integer.parseInt(request.getParameter("rNo"));
			String fname=request.getParameter("fname");
			String lname=request.getParameter("lname");
	
			pw.println("Connection to : "+con);
			
			if((fname!=null) && (lname!=null) && (regNo>0))
			{
				pw.println("<h1>Welcome</h1>");
				PreparedStatement ps=
				con.prepareStatement("insert into register values(?,?,?)");
			
				ps.setInt(1,regNo);
				ps.setString(2,fname);
				ps.setString(3,lname);
				
				int i=ps.executeUpdate();
			
				if(i>0)
				{
					pw.println("Record Saved..\n");
					pw.println("<a href=\"Login1.jsp\">Redirect</a>");
				}	
			}
			else
			{
				pw.println("Invalid Details..");
			}
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		%>
</body>
</html>