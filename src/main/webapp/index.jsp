<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<form action="login.jsp" method="get">
		
		<input type="submit" value="hello">
		<% String message = (String) request.getAttribute("message");
        	if(message != null)
        	{
        %><h2><%= message %></h2>
        <%
        }
        	%>
        	<h3>GO BACK to Home page here </h3>
	</form>
	
</body>
</html>