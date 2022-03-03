package br.com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.dao.ClienteDAO;
import br.com.dao.EnderecoDAO;
import br.com.dao.PedidoClienteDAO;
//import br.com.dao.EnderecoClienteDAO;


@WebServlet("/ServletCliente")
public class ServletCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
private ClienteDAO clie;	
private PedidoClienteDAO ped;
private EnderecoDAO end;
	

    public ServletCliente() {
        super();
     this.clie = new ClienteDAO();
     this.ped = new PedidoClienteDAO();
     this.end = new EnderecoDAO();

     
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		selectAllCliente(request,response);
		

	}



	private void selectAllCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		request.setAttribute("listCliente", this.clie.mostrarCliente());

		request.setAttribute("listCliente", this.clie.mostrarCliente());
		request.setAttribute("contagemUsuarios", this.clie.contarUsuarios());
		request.setAttribute("mostrarPedido", this.ped.mostrarPedido());
		request.setAttribute("mostrarEndereco", this.end.mostrarEndereco());
		
		
		request.getRequestDispatcher("cliente.jsp").forward(request, response);
	}

	
	
	
}
