<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	HttpSession sesion=request.getSession();
	Object user=sesion.getAttribute("usuario");
	if(user!=null){
		//response.sendRedirect("/Biblioteca/admin/dashboard.jsp"); //para evitar el bucle de redireccion
	}else{
		%>
		<jsp:forward page="/index.jsp" >
			<jsp:param name="error" value="Para Acceder al Sistema, por favor Inicie Sesi�n."/>
		</jsp:forward>
		<%
	}
%>