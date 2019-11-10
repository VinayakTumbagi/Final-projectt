
<%@ page session="false" %>
<html>
<head>
<title>Page Counter Using URL Rewriting</title>
</head>
<body>
<h3>Page Counter Using URL Rewriting</h3>
<%
   int count = 0;
   String parm = request.getParameter("count");
   if (parm != null)
      count = Integer.parseInt(parm);
   if (count == 0) {
%> This is the first time you have accessed this page. <%
   }
   else if (count == 1) {
%> You have accessed the page once before.<%
   }
   else {
%> You have accessed the page <%= count %> times before.<%
   }
%>
<p>
   Click <a href="Counter.jsp?count=<%=count + 1 %>">here</a>
   to visit the page again.
</p>
</body>
</html>
