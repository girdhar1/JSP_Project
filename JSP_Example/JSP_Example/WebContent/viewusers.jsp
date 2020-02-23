<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@page import="com.jsp.beans.*, com.jsp.dao.UserDAO,java.util.*"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<h1>User List</h1>
	<%
		List<User> list = UserDAO.getAllRecord();
		request.setAttribute("list", list);
	%>

	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Password</th>
			<th>Email</th>
			<th>sex</th>
			<th>Country</th>
			<th>Edit</th>
			<th>Delete</th>
		<tr>
			<c:forEach items="${list}" var="u">
				<tr>
					<td>${u.getId()}</td>
					<td>${u.getName()}</td>
					<td>${u.getPassword()}</td>
					<td>${u.getEmail()}</td>
					<td>${u.getSex()}</td>
					<td>${u.getCountry()}</td>
					<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
					<td><a href="deleteuser.jsp?id=${u.getId() }">Delete</a></td>
				</tr>

			</c:forEach>
	</table>
	<br>
	<a href="adduserform.jsp">Add New User</a>

</body>
</html>