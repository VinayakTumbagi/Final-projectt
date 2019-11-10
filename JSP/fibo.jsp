<%@ page language="java"%>

<html>
 <head>
   <title>
	FIBONACCI
	</title>
</head>
<body>

<%

	out.println("Fibonacci series till 5:");
	int fno=0,sno=1,tno=0;
	
	for(int i=0;i<6;i++)
	{
		out.println(fno);
		tno=fno+sno;
		fno=sno;
		sno=tno;
		
	}




 %>
	</body>
	</html>
	
	
	