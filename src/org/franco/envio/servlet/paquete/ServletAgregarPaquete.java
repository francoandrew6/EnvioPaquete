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

@WebServlet("/ServletAgregarPaquete.do")
public class ServletAgregarPaquete extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher despachador=null;
		Paquete paquete=new Paquete(0,
				req.getParameter("txtNombre"),
				Integer.parseInt(req.getParameter("txtpeso")),
				req.getParameter("txtdescricpcion"),
				Double.parseDouble(req.getParameter("txtvalor")),
				req.getParameter("txtTipoPaquete"));
		Conexion.getInstancia().agregar(paquete);
		despachador=req.getRequestDispatcher("ServletListar.do");
		req.getSession().setAttribute("listadoPaquete", Conexion.getInstancia().listar("From Paquete"));
		despachador.forward(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	
	}
}
