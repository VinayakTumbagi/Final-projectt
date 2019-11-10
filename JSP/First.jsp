<html>
	<body>
	<h2> First JSP program!!!!!!!!!!!!</h2>
	
	<%! String name(String a)
	{
		a+=" Vinu";
		return a;
	} %>
	
	The time on the server is: <%= new java.util.Date()%>
	<br><br>
	
	Converting a string into Upper case:<%= new String("Hello World!!!").toUpperCase()%>
	<br><br>
	Calculation of 24*29 is:<%= 24*29 %>
	<br><br>
	
	
	<%
		for(int i=0;i<10;i++)
		{
			out.println("<br>Vinu "+(i+1));
			
					
		}
	%>
	<br><br>
	<%= name("Hello") %>
	
	
	
	</body>
</html>