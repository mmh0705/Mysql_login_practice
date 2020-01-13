<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>
<body>

	<%@page import="user.UserDAO,   user.User,   java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<h1>Users List</h1>

	<%
		List<User> list = UserDAO.getAllRecords();
		request.setAttribute("list", list);
	%>

	<table border="1" width="90%">
		<tr>
			<th>ID</th>
			<th>Password</th>
			<th>Name</th>
			<th>Gender</th>
			<th>Email</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getUserID()}</td>
				<td>${u.getUserPassword()}</td>
				<td>${u.getUserName()}</td>
				<td>${u.getUserGender()}</td>
				<td>${u.getUserEmail()}</td>
				<td><a href="deleteuser.jsp?userID=${u.getUserID()}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<a href="main.jsp">Add New User</a>

</body>
</html>