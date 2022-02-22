package br.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.dao.ClienteDAO;
import br.com.dao.VeiculoDAO;

/**
 * Servlet implementation class ServletIndex
 */
@WebServlet("/ServletIndex")
public class ServletIndex extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	ClienteDAO cD = new ClienteDAO();
	VeiculoDAO vD = new VeiculoDAO();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletIndex() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.contagem(request, response);
	}
	
	private void contagem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{	
		request.setAttribute("contagem_clientes", this.cD.contarUsuarios());
		request.setAttribute("contagem_veiculos", this.vD.contarVeiculos());
		
		request.getRequestDispatcher("./index.jsp").forward(request, response);
	}
	
	//private void contagemVeiculos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{	
		//request.setAttribute("contagem_veiculos", this.vD.contarVeiculos());
		//request.getRequestDispatcher("./index.jsp").forward(request, response);
	//}

}
