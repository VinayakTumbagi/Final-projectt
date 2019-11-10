<%@ page import = "javax.sql.*,java.sql.*,java.io.*"%>

<%
	String name=request.getParameter("fname");
	int i=Integer.parseInt(request.getParameter("rollno"));
	
	out.println("Hello "+name);
	
	try
	{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
		PreparedStatement  ps= con.prepareStatement("insert into student values(?,?)");
		ps.setInt(1,i);
		ps.setString(2,name);
		
		int x=ps.executeUpdate();
		if(x!=0)
		{
			out.println("Row affected.....");
			
		}
		
		else
		{
			out.println("Something's wrong!!!!!");
			
		}
		
	}
	
	catch(Exception e)
	{
		out.println(e);
		
	}
%>
