package org.franco.envio.servlet.paquete;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.franco.envio.bean.Paquete;
import org.franco.envio.db.Conexion;

@WebServlet("/ServletEliminarLibro.do")
public class ServletEliminarPaquete extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher despachador=null;
		Integer id=Integer.parseInt(req.getParameter("idPaquete"));
		Conexion.getInstancia().eliminar(Conexion.getInstancia().buscar(Paquete.class, id));
		despachador=req.getRequestDispatcher("ServletListarPaquete.do");
		despachador.forward(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
