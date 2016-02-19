package org.franco.envio.servlet.auth;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.franco.envio.db.Conexion;


public class CerrarSesion extends HttpServlet {
	 @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher despachador=null;
		req.getSession().invalidate();
		req.getSession().removeAttribute("usuario");
		Conexion.getInstancia().closeSession();
		despachador=req.getRequestDispatcher("index.jsp");
		despachador.forward(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
}
