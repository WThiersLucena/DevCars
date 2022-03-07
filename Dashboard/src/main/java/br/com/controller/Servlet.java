package br.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.dao.LoginDAO;
import br.com.entidade.Login;




@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private LoginDAO dao;
   
    public Servlet() {
        super();
        dao = new LoginDAO(); 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {				
		request.setAttribute("lista", dao.listaCadastro());
		String option = request.getParameter("option");
		
		if(option.equals("insertForm")) {
			InsertForm(request, response);
			
		}else if (option.equals("updateForm")) {
			UpdateForm(request, response);
			
		} else if (option.equals("update")) {
			Update(request, response); 
			
		} else if (option.equals("delete")) {
			Delete(request, response);
		
		} else if (option.equals("insert")) {
			Insert(request, response);
			
		}				
		
		request.setAttribute("lista", dao.listaCadastro());
		request.getRequestDispatcher("lista.jsp").forward(request, response);		
			
	}
	
	
	protected void InsertForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("cadastroLogin.jsp").forward(request, response);		
	}
	

	protected void UpdateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		Integer id1 = Integer.parseInt(id);
		Login Buscar=  dao.buscarLogin(id1);
		request.setAttribute("usuario", Buscar);
		request.getRequestDispatcher("cadastroLogin.jsp").forward(request, response);		
	}
	
	
	protected void Update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String usuario = request.getParameter("usuario");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
	
		if ((usuario!= null) && (email != null) && (senha != null)) {
			
			if (!usuario.equals("")){
				dao = new LoginDAO();
				Integer id1 = Integer.parseInt(id);
				Login login1 = new Login(usuario, email, senha);
				login1.setId(id1);
				dao.updateLogin(login1);		
			}
		} 		
	}
	
	
	protected void Delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		if (id != null) {
			Integer id1 = Integer.parseInt(id);
			dao = new LoginDAO();
			dao.removerLogin(id1);
		}		
	}
	
	
	protected void Insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");

		
		if ((nome!= null) && (email != null) && (senha != null)) {
			if (!nome.equals("")){
				 dao = new LoginDAO();
				 Login login = new Login(nome, email, senha);
				 dao.loginCadastro(login);
			}
		}	
	}
	
}