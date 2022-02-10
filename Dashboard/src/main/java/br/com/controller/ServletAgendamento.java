package br.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.dao.AgendamentoDAO;

/**
 * Servlet implementation class ServletAgendamento
 */
@WebServlet("/ServletAgendamento")
public class ServletAgendamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AgendamentoDAO agenda = new AgendamentoDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAgendamento() {
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
		this.mostrarAgenda(request, response);
	}
	
	
	private void mostrarAgenda(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setAttribute("agenda", this.agenda.mostrarAgenda());
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
