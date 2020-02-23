<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@page import="com.jsp.dao.UserDAO"%>
	<jsp:useBean id="u" class="com.jsp.beans.User"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />
	<%
		UserDAO.delete(u);
		response.sendRedirect("viewusers.jsp");
	%>
</body>
</html>