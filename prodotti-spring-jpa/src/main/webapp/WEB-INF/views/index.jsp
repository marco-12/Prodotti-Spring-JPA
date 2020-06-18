<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Manager</title>
</head>
<body>
<div align="center">
	<h2>Product Manager</h2>
	<form method="get" action="cerca">
		<input type="text" name="parola" />
		<input type="submit" value="Cerca Prodotto" />
	</form>
	<form action="nuovo" method="post">
	<br>
		<input type="submit" name="nuovo" value="Aggiungi Nuovo Prodotto">
	</form>
	<br>
	<table border="1" cellpadding="2">
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Quantità</th>
			<th>Categoria</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${listaProdotti}" var="prodotto">
		<tr>
			<td>${prodotto.id}</td>
			<td>${prodotto.nome}</td>
			<td>${prodotto.quantita}</td>
			<td>${prodotto.categoria}</td>
			<td>
				<a href="modifica?id=${prodotto.id}">Modifica</a>
				<a href="cancella?id=${prodotto.id}">Cancella</a>
			</td>
		</tr>
		</c:forEach>
	</table>
</div>	
</body>
</html>