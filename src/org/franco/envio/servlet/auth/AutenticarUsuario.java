package org.franco.envio.servlet.auth;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.franco.envio.bean.Usuario;
import org.franco.envio.db.Conexion;

public class AutenticarUsuario extends HttpServlet	{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher despachador=null;
		List<Object> usuarios=Conexion.getInstancia().autenticar(req.getParameter("txtUsuario"),req.getParameter("txtPassword"));
		if(usuarios!=null && usuarios.size()>0){
			HttpSession sesion=req.getSession(true);
			sesion.setAttribute("Usuario", (Usuario)usuarios.get(0));
			despachador=req.getRequestDispatcher("admin/dashboard.jsp");
		}else{
			req.setAttribute("error", "verifica tus credenciales");
			despachador=req.getRequestDispatcher("index.jsp");
		}
		despachador.forward(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
