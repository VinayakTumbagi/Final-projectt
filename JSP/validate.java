import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class validate extends HttpServlet
{
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		String st1=res.getParameter("uname");
		String st2=res.getParameter("pass");
		
		if(st1.equals("vinu") && st2.equals("vinu"))
		{
			res.sendRedirect("login.jsp");
		}
		else
		{
			res.sendRedirect("sorry.jsp");
		}
	}

}