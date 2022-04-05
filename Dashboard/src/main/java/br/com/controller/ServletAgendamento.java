package br.com.controller;

import java.io.IOException;
import java.text.DecimalFormat; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.dao.AgendamentoDAO;
import br.com.entidade.Agendamento;


/**
 * Servlet implementation class ServletAgendamento
 */
@WebServlet("/ServletAgendamento")
public class ServletAgendamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AgendamentoDAO agenda = new AgendamentoDAO();
	Agendamento a = new Agendamento();
       
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
	
	protected void Sair(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("Deslogar.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.mostrarAgenda(request, response);
		String option = request.getParameter("option");
		if (option == null) {
			option = "";
		}
//		 System.out.println("doPost =" + optionFornecedor);
		 
		switch(option) {
			case ("sair"):
				this.Sair(request, response);
				break;
			default:
				this.mostrarAgenda(request, response);
				break;
		}
	}
	
	
	private void mostrarAgenda(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{	
		request.setAttribute("agenda", this.agenda.mostrarAgenda());
		request.getRequestDispatcher("./agendamento.jsp").forward(request, response);
	}

}
