<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar Paquete</title>
</head>
<body>
	<center>
		<form action="ServletEditarPaquete.do" method="get">
			<input type="hidden" name="txtIdPaquete" value="${paquete.getIdPaquete()}">
			<br/>Nombre: <input type="text" name="txtNombre" value="${paquete.getNmbre()}">
			<br/>Peso: <input type="text" name="txtpeso" value="${paquete.getPeso()}">
			<br/>Descripcion: <input type="text" name="txtdescripcion" value="${paquete.getDescripcion()}">
			<br/>Valor: <input type="text" name="txtvalor" value="${paquete.getValor()}">
			<br/>Tipo de Paquete: <input type="text" name="txtTipoPaquete" value="${paquete.getTipoPaquete()}">	
		</form>
	</center>
	
				
	
	
	
</body>
</html>