<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="../ServletAgregarStock.do" method="get">
		Valor: <input type="text" name="txtvalorviaje" >
		Estado: <select name="txtEstado">
					<option value="0">Enviado</option>
					<option value="1">No Enviado</option>
				</select>
		Libro:  <select name="txtIdLibro">
					<c:forEach items="${listadoPaquete}" var="paquete">
						<option value="${paquete.getIdPaquete()}">${paquete.getNombre()}</option>
					</c:forEach>
				</select>
				<input type="submit" value="Agregar">
	</form>
</body>
</html>