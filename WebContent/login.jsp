<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="SessionServlet" method="post">
		<table>
			<tr>
				<td colspan="2">
					<%
						String message = (String) request.getAttribute("MESSAGE");
						if (message != null)
							out.println(message);
					%>
				</td>
			</tr>
			<tr>
				<td>Username</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Login" /></td>
			</tr>
		</table>
	</form>
</body>
</html>