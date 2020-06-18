<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modifica Prodotto</title>
</head>
<body>
	<div align="center">
		<h2>Modifica Prodotto</h2>
		<form:form action="salva" method="post" modelAttribute="prodotto">
			<table border="0" cellpadding="5">
				<tr>
					<td>ID: </td>
					<td>${prodotto.id}
						<form:hidden path="id"/>
					</td>
				</tr>			
				<tr>
					<td>Nome: </td>
					<td><form:input path="nome" /></td>
				</tr>
				<tr>
					<td>Quantità: </td>
					<td><form:input path="quantita" /></td>
				</tr>
				<tr>
					<td>Categoria: </td>
					<td><form:input path="categoria" /></td>
				</tr>		
				<tr>
					<td align="center" colspan="2"><input type="submit" value="Salva"></td>
				</tr>						
			</table>
		</form:form>
	</div>
</body>
</html>