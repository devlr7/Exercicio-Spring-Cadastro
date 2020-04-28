<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Qintess - Comércio Online</title>
<spring:url value="produto/" var="produto"></spring:url>
</head>
<body>
	<h1>Site on!</h1>
	<a href="${produto}">CRUD Produto</a>
</body>
</html>