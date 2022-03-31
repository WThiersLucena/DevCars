package br.com.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.dao.PedidoDAO;

@WebServlet("/ServletPedido")
public class ServletPedido extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	private PedidoDAO ped;

	public ServletPedido() {
		super();
		this.ped = new PedidoDAO();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		selectAllPedidos(request, response);
		
//		String optionPedido = request.getParameter("optionPedido");
//		if (optionPedido == null) {
//			optionPedido = "";
//		}
//
//		switch (optionPedido) {
//		case ("Kbeludo"):
//			selectAllPedidos(request, response);
//			break;

	}

	private void showInsertPedido(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/").forward(request, response); // INSERIR PÁGINA DE CADASTRO DE PEDIDO//
	}

//	private void showUpdatePedido(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Integer cod_pedido = Integer.parseInt(request.getParameter("cod_pedido"));
//		
//		Pedido p = ped.buscarPedido(cod_pedido);
//		
//		request.setAttribute("pedido", p);
//		
//		request.getRequestDispatcher("/").forward(request, response); //INSERIR A PÁGINA DE CADASTRO DE PEDIDO//
//	}

	private void selectAllPedidos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("listPedido", this.ped.mostrarPedido());
		request.getRequestDispatcher("pedido.jsp").forward(request, response);
	}

}
