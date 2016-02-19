<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Paqueteria</title>
</head>
<body>
	<h1>Listado de Paquetes</h1>
	<a href="libro/agregar.jsp">Nuevo Paquete</a>
	<table>
		<thead>
			<th>NOMBRE</th>
			<th>PESO</th>
			<th>DESCRIPCION</th>
			<th>VALOR</th>
			<th>TIPO DE PAQUETE</th>
		</thead>
		<tbody>
			<c:forEach items="${listaPaquete}" var="paquete" >
				<tr>
					<td>${paquete.getNombre()}</td>
					<td>${paquete.getPeso()}</td>
					<td>${paquete.getDescripcion()}</td>
					<td>${paquete.getValor()}</td>
					<td>${paquete.getTipoPaquete()}</td>
					<td><a href="ServletEliminarPaquete.do?idPaquete=${paquete.getIdPaquete()}">Eliminar</a></td>
					<td><a href="ServletCargarPaquete.do?idPaquete=${paquete.getIdPaquete()}">Editar</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>