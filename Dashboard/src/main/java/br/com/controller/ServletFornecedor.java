package br.com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.dao.FornecedorDAO;
import br.com.entidade.Fornecedor;


@WebServlet("/ServletFornecedor")
public class ServletFornecedor extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	public FornecedorDAO fornec;

    public ServletFornecedor() {
        super();
        this.fornec = new FornecedorDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void Sair(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("Deslogar.jsp").forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String optionFornecedor = request.getParameter("optionFornecedor");
		if (optionFornecedor == null) {
			optionFornecedor = "";
		}
//		 System.out.println("doPost =" + optionFornecedor);
		 
		switch(optionFornecedor) {
			case ("insertFormSupplier"):
				showInsertSupplier(request, response);
				break;
			case ("updateFormSupplier"):
				showUpdateSuppliers(request, response);
				break;
			case ("updateSupplier"):
				updateSupplier(request, response);
				break;
			case ("deleteSupplier"):
				deleteSupplier(request, response);
				break;
			case ("insertSupplier"):
				insertSupplier(request, response);
				break;
			case ("sair"):
				this.Sair(request, response);
			default:
				selectAllSuppliers(request, response);
		}
		
	}

	private void showInsertSupplier(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//		System.out.println("Qualquer coisa");
		request.getRequestDispatcher("formFornecedor.jsp").forward(request, response);
	}
	
	private void showUpdateSuppliers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		Integer cod_fornecedor = Integer.parseInt(request.getParameter("cod_fornecedor"));
		Fornecedor f = fornec.buscarSupplier(cod_fornecedor);
		
		request.setAttribute("supplier", f);
		
		request.getRequestDispatcher("formFornecedor.jsp").forward(request, response);
	}
	
	private void insertSupplier(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
//		 System.out.println("qqr coisa 2");
		String cnpjBack = request.getParameter("cnpj").replace("/", "").replace(".", "").replace("-", "");
		String razao_socialBack = request.getParameter("razao_social").toUpperCase();
		String inscricao_estadualBack = request.getParameter("inscricao_estadual").replace("/", "").replace(".", "");
		String email_fornecedorBack = request.getParameter("email_fornecedor").toUpperCase();
		String telefone_fornecedorBack = request.getParameter("telefone_fornecedor").replace(")", "").replace("(", "").replace(" ", "").replace("-", "");
		
//		 System.out.println("qqr coisa 2 = " + cnpjBack);
//		 System.out.println("qqr coisa 2 = " + razao_socialBack);
//		 System.out.println("qqr coisa 2 = " + inscricao_estadualBack);
//		 System.out.println("qqr coisa 2 = " + email_fornecedorBack);
//		 System.out.println("qqr coisa 2 = " + telefone_fornecedorBack);
		
		if ((cnpjBack != null) && (razao_socialBack != null) && (inscricao_estadualBack != null) && (email_fornecedorBack != null) && (telefone_fornecedorBack != null)) {
			if (!cnpjBack.equals("")){
				Fornecedor supplier1 = new Fornecedor(cnpjBack, razao_socialBack, inscricao_estadualBack, email_fornecedorBack, telefone_fornecedorBack);
				fornec.addSupplier(supplier1);
			}
		}
		
		//Begin: Logic for a sleep function. Remember to import the function as it was imported at line 15.
        try
        {
            Thread.sleep(1500);
        } 
        catch (InterruptedException ex)
        {
            ex.printStackTrace();
        }
        //End: Logic for a sleep function.
        
		response.sendRedirect("ServletFornecedor");
	}
	
	private void selectAllSuppliers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setAttribute("listSupplier", this.fornec.getListSupplier());
		request.getRequestDispatcher("fornecedor.jsp").forward(request, response);
	}
	
	
	private void deleteSupplier(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cod_fornecedorBack = request.getParameter("cod_fornecedor");
		
		System.out.println(cod_fornecedorBack);
		
		
		
		if (cod_fornecedorBack != null) {
			Integer cod_fornecedor = Integer.parseInt(cod_fornecedorBack);
			
			try {
				this.fornec.removeSupplier(cod_fornecedor);
				Thread.sleep(1500);
				System.out.println("TEMPO DE 1 SEGUNDO E MEIO COM SUCESSO AO DELETAR");
			} 
			
			catch (SQLException sql){
				System.out.println(sql.getLocalizedMessage());
				
				try {
					Thread.sleep(1500);
			        System.out.println("TEMPO DE 1 SEGUNDO E MEIO AO DESATIVAR");
			        this.fornec.desativaSupplier(cod_fornecedor);
				}
				
				catch (InterruptedException ex) {
					ex.printStackTrace();
				}
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
		response.sendRedirect("ServletFornecedor");
	}
	
	
	private void updateSupplier(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String cnpjBack = request.getParameter("cnpj").replace("/", "").replace(".", "").replace("-", "");
		String razao_socialBack = request.getParameter("razao_social").toUpperCase();
		String inscricao_estadualBack = request.getParameter("inscricao_estadual").replace("/", "").replace(".", "");
		String email_fornecedorBack = request.getParameter("email_fornecedor").toUpperCase();
		String telefone_fornecedorBack = request.getParameter("telefone_fornecedor").replace(")", "").replace("(", "").replace(" ", "").replace("-", "");
		String cod_fornecedorBack = request.getParameter("cod_fornecedor");
		
		if ((cnpjBack != null) && (razao_socialBack != null) && (inscricao_estadualBack != null) && (email_fornecedorBack != null) && (telefone_fornecedorBack != null) && (cod_fornecedorBack != null)) {
			if (!cnpjBack.equals("")){
				Integer cod_fornecedor = Integer.parseInt(cod_fornecedorBack);
				Fornecedor supplier1 = new Fornecedor(cnpjBack, razao_socialBack, inscricao_estadualBack, email_fornecedorBack, telefone_fornecedorBack); // ERRO ESTAVA AQUI: INVERTER PAIS COM EMAIL E EMAIL COM PAIS. AGORA ESTÃ� CERTO
				supplier1.setCod_fornecedor(cod_fornecedor);
				this.fornec.updateSupplier(supplier1);
			}
		}
		
		//Begin: Logic for a sleep function. Remember to import the function as it was imported at line 15.
        try
        {
            Thread.sleep(1500);
        } 
        catch (InterruptedException ex)
        {
            ex.printStackTrace();
        }
        //End: Logic for a sleep function.
        
		response.sendRedirect("ServletFornecedor");
	}
	
}
