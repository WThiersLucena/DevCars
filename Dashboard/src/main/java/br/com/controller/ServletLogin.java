package br.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.dao.LoginDAO;
import br.com.entidade.Login;

@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginDAO DAO;

    public ServletLogin() {
        super();
        DAO = new LoginDAO(); 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
//	protected void Sair(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.getRequestDispatcher("Deslogar.jsp").forward(request, response);
//		
//	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String opcao = request.getParameter("opcao");
		
	switch(opcao) {
	case ("Entrar"): 
		conferencia(request, response);
		break;
	case ("insert"): 
		Insert(request, response);
		break;
	case ("sair"): 
		request.getRequestDispatcher("index.jsp").forward(request, response);
		break;
	case ("frmLogin"): 
		request.getRequestDispatcher("index.jsp").forward(request, response);
		break;
		default:			
	}

	
	}
	
	protected void conferencia(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		if(DAO.conferencia(email, senha) != null) {
			System.out.println("Qualquer coisa");
			Login login = DAO.conferencia(email, senha);
			request.getServletContext().setAttribute("email", login.getUsuario());
			request.getRequestDispatcher("ServletIndex").forward(request, response);
//			response.sendRedirect("index.jsp"); 
			
		} else {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	}
	
	protected void Insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuario = request.getParameter("usuario");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		if ((usuario != null && !usuario.equals("") ) && (email!= null  && !email.equals("")) && (senha!= null  && !senha.equals(""))) {
				Login login = new Login(email, senha, usuario);
				DAO.loginCadastro(login);
			
		}	
	}	
}