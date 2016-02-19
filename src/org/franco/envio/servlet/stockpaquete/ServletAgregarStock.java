package org.franco.envio.servlet.stockpaquete;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.franco.envio.bean.Paquete;
import org.franco.envio.bean.StockPaquete;
import org.franco.envio.db.Conexion;

@WebServlet("/ServletAgregarStock.do")
public class ServletAgregarStock extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher despachador=null;
		StockPaquete stock=new StockPaquete(
				0,
				Double.parseDouble(req.getParameter("txtvalorviaje")),
				req.getParameter("txtEstado"),
				((Paquete)Conexion.getInstancia().buscar(Paquete.class, Integer.parseInt(req.getParameter("txtIdPaquete"))))
				);
		Conexion.getInstancia().agregar(stock);
		despachador=req.getRequestDispatcher("ServletListarStock.do");
		despachador.forward(req, resp);
		
	}
}
