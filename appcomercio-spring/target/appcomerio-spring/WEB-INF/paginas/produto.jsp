<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro - Produto</title>
<spring:url value="/produto/salva" var="salva"></spring:url>
<spring:url value="/produto/deleta/" var="deleta"></spring:url>
<spring:url value="/produto/altera/" var="altera"></spring:url>
</head>
<body>
	<h2>Cadastro - Produto</h2>
	<hr>

	<form:form action="${salva}" modelAttribute="produto">

		<form:hidden path="id" />
		<label>Nome:</label>
		<br />
		<form:input path="nome" />
		<br />
		<label>Valor Unitário:</label>
		<br />
		<form:input path="valorUnitario" />
		<br />
		<form:button>${produto.id == 0 ? 'Cadastrar' : 'Alterar' }</form:button>
	</form:form>

	<hr>

	<table>
		<tr>
			<th>Código</th>
			<th>Nome</th>
			<th>Valor Unitário</th>
			<th colspan="2">Ações</th>
		</tr>
		<c:forEach var="produto" items="${produtos}">
			<tr>
				<td>${produto.id}</td>
				<td>${produto.nome}</td>
				<td>${produto.valorUnitario}</td>
				<td><a href="${altera}${produto.id}">Alterar</a></td>
				<td><a href="${deleta}${produto.id}">Deletar</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>