<html>
	<body>
		<%! String a,bl %>
		
		<%	a=getParameter("username");
			b1=getParameter("password");
			
			if(a.equals("vinu") && b1.equals("vinu"))
			{%>
			<jsp:forward page="welcome.jsp"/>
			
			<%} else
			%>
			Wrong Uname/Pword,Try Again!!!!
			
			<jsp:include page="login.jsp"/>q
			
			
	</body>