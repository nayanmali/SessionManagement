<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String sessionValue = (String) request.getSession().getAttribute("AUTHENTICATOR");
		if (sessionValue == null) {
			response.sendRedirect("login.jsp");
		}

		out.println(request.getSession().getAttribute("TITLE"));

		out.println("Welcome " + sessionValue);
	%>

</body>
</html>