<%@ page language="java"%>
<%@ include file="fib.html"%>
<html>
 <head>
   <title>
	FIBONACCI
	</title>
</head>
<body>

<%! int f1 = 0 %>
<%! int f2 = 1 %>
<%! int f3 %>
<%! int n%>
<% 
	
	n=5;
	
	for(i=0;i<=n;i++)
	{
	   out.println(f1);
	   f1=f2+f3;
	   f1=f2;
	   f2=f3;
	
	}
	%>
	</body>
	</html>
	
	
	