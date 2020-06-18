<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cerca Prodotto</title>
</head>
<body>
<div align="center">
	<h2>Cerca Prodotto</h2>
	<table border="1" cellpadding="5">
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Quantità</th>
			<th>Categoria</th>
		</tr>
		<c:forEach items="${risultato}" var="prodotto">
		<tr>
			<td>${prodotto.id}</td>
			<td>${prodotto.nome}</td>
			<td>${prodotto.quantita}</td>
			<td>${prodotto.categoria}</td>
		</tr>
		</c:forEach>
	</table>
</div>	
</body>
</html>