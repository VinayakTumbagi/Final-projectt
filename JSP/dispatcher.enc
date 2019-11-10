<html>
<head>
<title>Request Dispatcher</title>
</head>
<%
String st=request.getParameter("fname");
String st1=request.getParameter("pwd");
if(st=="")
{

getServletContext().getRequestDispatcher("/form.jsp").forward(request, response);
}

else{
getServletContext().getRequestDispatcher("/welcome.jsp").forward(request, response);
}
%>
</html>
