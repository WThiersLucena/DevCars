package br.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.dao.VeiculoDAO;
import br.com.entidade.Veiculo;

/**
 * Servlet implementation class ServletVeiculo
 */
@WebServlet("/ServletVeiculo")
public class ServletVeiculo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private VeiculoDAO veic;
	
	
    public ServletVeiculo() {
        super();
     this.veic = new VeiculoDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void showInsertVeiculo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/").forward(request, response); //INSERIR PÁGINA DE CADASTRO DE VEÍCULO//
	}
	
	private void showUpdateVeiculo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer cod_veiculo = Integer.parseInt(request.getParameter("cod_veiculo"));
		
		Veiculo v = veic.buscarVeiculo(cod_veiculo);
		
		request.setAttribute("veiculo", v);
		
		request.getRequestDispatcher("/").forward(request, response); //INSERIR A PÁGINA DE CADASTRO DE VEÍCULO//
	}

	
	private void insertVeiculo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String modelo_veiculo = request.getParameter("modelo_veiculo");
		Integer cod_marca = Integer.parseInt(request.getParameter("cod_marca"));
		String numero_chassi = request.getParameter("numero_chassi");
		Integer ano_veiculo = Integer.parseInt(request.getParameter("ano_veiculo"));
		Double preco_veiculo = Double.parseDouble(request.getParameter("preco_veiculo"));
		Integer cod_cor = Integer.parseInt(request.getParameter("cod_cor"));
		Integer cod_motor = Integer.parseInt(request.getParameter("cod_motor"));
		Integer cod_combustivel = Integer.parseInt(request.getParameter("cod_combustivel"));
		Integer cod_cambio = Integer.parseInt(request.getParameter("cod_cambio"));
		Integer cod_fornecedor = Integer.parseInt(request.getParameter("cod_fornecedor"));
		Boolean estoque = Boolean.parseBoolean(request.getParameter("estoque"));
		Boolean destaque = Boolean.parseBoolean(request.getParameter("destaque"));
		
		if(  (modelo_veiculo != null)  &&  (cod_marca != null )  && (numero_chassi != null )  && (ano_veiculo != null )  && (preco_veiculo != null ) && (cod_cor != null )  && (cod_motor != null )  && (cod_combustivel != null )  && (cod_cambio != null)  && (cod_fornecedor != null)  && (estoque != null )  && (destaque != null) ) {
			if(!modelo_veiculo.equals("")) {
				Veiculo veiculo1 = new Veiculo(modelo_veiculo, cod_marca, numero_chassi, ano_veiculo, preco_veiculo, cod_cor, cod_motor, cod_combustivel, cod_cambio, cod_fornecedor, estoque, destaque);
				
				veic.adicionarVeiculo(veiculo1);
			}
		}
		
		response.sendRedirect("servletVeiculo");
	}
	
	private void selectAllVeiculos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("listVeiculo", this.veic.mostrarVeiculo());
		request.getRequestDispatcher("veiculo.jsp").forward(request, response);
	}
	
	private void deleteVeiculo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cod_veiculoBack = request.getParameter("cod_veiculo");
		
		if (cod_veiculoBack != null) {
			Integer cod_veiculo = Integer.parseInt("cod_veiculo");
			this.veic.removerVeiculo(cod_veiculo);
		}
		
		response.sendRedirect("ServletVeiculo");
	}
	
	private void updateVeiculo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
}
