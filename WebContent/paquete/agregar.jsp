<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar Paquete</title>
</head>
<body>
	<center>
		<form action="../ServletAgregarPaquete.do" method="get">
			<br/>Nombre: <input type="text" name="txtNombre">
			<br/>Peso: <input type="text" name="txtpeso">
			<br/>Descripcion: <input type="text" name="txtdescripcion"></textarea>
			<br/>Valor: <input type="text" name="txtvalor">
			<br/>Tipo de Paquete: <input type="text" name="txtTipoPaquete">
			<br/><input type="submit" value="Agregar">	
		</form>
	</center>
</body>
</html>