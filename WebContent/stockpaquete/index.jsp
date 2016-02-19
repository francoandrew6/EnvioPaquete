<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Libros en Stock</h1>
	<a href="stockpaquete/agregar.jsp">Nuevo Stock</a>
	<table>
		<thead>
			<th>VALOR</th>
			<th>ESTADO</th>
			<th>PAQUETE</th>
		</thead>
		<tbody>
			<c:forEach items="${listaStock}" var="stock">
				<tr>
					<td>${stock.getValorViaje()}</td>
					<td>
						<c:if test="${stock.getEstado()==0}">
							Disponible
						</c:if>
						<c:if test="${stock.getEstado()==1}">
							No Disponible
						</c:if>
					</td>
					<td>${stock.getIdPaquete().getNombre()}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>	
</body>
</html>