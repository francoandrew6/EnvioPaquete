<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	HttpSession sesion=request.getSession();
	Object user=sesion.getAttribute("usuario");
	if(user!=null){
		response.sendRedirect("/EnvioPaquete/admin/dashboard.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form action="Autenticar.do" method="post">
		Usuario:<input type="text" name="txtUsuario">
		Password:<input type="password" name="txtPassword">
		<input type="submit" value="Login">
	</form>
	${error}
	<%= (request.getParameter("error")!=null)?request.getParameter("error"):""%>
</body>
</html>