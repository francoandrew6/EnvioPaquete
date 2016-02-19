package org.franco.envio.servlet.paquete;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.franco.envio.db.Conexion;

@WebServlet("/ServletListarPaquete.do")
public class ServletListarPaquete extends HttpServlet	{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher despachador=null;
		req.setAttribute("listaPaquete", Conexion.getInstancia().listar("From Paquete"));
		despachador=req.getRequestDispatcher("paquete/index.jsp");
		despachador.forward(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
