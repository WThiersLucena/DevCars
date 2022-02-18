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

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String optionVeiculo = request.getParameter("optionVeiculo");
		if (optionVeiculo == null) {
			optionVeiculo = "";
		}
//		 System.out.println("doPost =" + optionFornecedor);
		 
		switch(optionVeiculo) {
			case ("insertFormVeiculo"):
				showInsertVeiculo(request, response);
				break;
			case ("updateFormVeiculo"):
				showUpdateVeiculo(request, response);
				break;
			case ("updateVeiculo"):
				updateVeiculo(request, response);
				break;
			case ("deleteVeiculo"):
				deleteVeiculo(request, response);
				break;
			case ("insertVeiculo"):
				insertVeiculo(request, response);
				break;
			default:
				selectAllVeiculos(request, response);
		}
	}
	
	
	private void showInsertVeiculo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("formVeiculo.jsp").forward(request, response); //INSERIR P�GINA DE CADASTRO DE VE�CULO//
	}
	
	private void showUpdateVeiculo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer cod_veiculo = Integer.parseInt(request.getParameter("cod_veiculo"));
		
		Veiculo v = veic.buscarVeiculo(cod_veiculo);
		
		request.setAttribute("veiculo", v);
		
		request.getRequestDispatcher("formVeiculo.jsp").forward(request, response); //INSERIR A P�GINA DE CADASTRO DE VE�CULO//
	}

	
	private void insertVeiculo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String modelo_veiculo = request.getParameter("modelo_veiculo");
//		String marca_veiculo = request.getParameter("marca_veiculo");
//		String nome_cor = request.getParameter("nome_cor");
//		String ano_veiculo = request.getParameter("ano_veiculo");
//		String motor_veiculo = request.getParameter("motor_veiculo");
//		String potencia_cv = request.getParameter("potencia_cv");
//		String preco_veiculo = request.getParameter("preco_veiculo");
//		String tipo_combustivel = request.getParameter("tipo_combustivel");
//		String cambio = request.getParameter("cambio");
//		String numero_chassi = request.getParameter("numero_chassi").replace(".", "");
//		String estoque = request.getParameter("estoque");
//		String destaque = request.getParameter("destaque");
		
		String modelo_veiculo = request.getParameter("modelo_veiculo");
		String cod_marca = request.getParameter("cod_marca");
		String cod_cor = request.getParameter("cod_cor");
		String ano_veiculo = request.getParameter("ano_veiculo");
		String cod_motor = request.getParameter("cod_motor");
		String preco_veiculo = request.getParameter("preco_veiculo");
		String cod_combustivel = request.getParameter("cod_combustivel");
		String cod_cambio = request.getParameter("cod_cambio");
		String cod_fornecedor = request.getParameter("cod_fornecedor");
		String numero_chassi = request.getParameter("numero_chassi").replace(".", "");
		String estoque = request.getParameter("estoque");
		String destaque = request.getParameter("destaque");
		
		if(  (cod_marca != null)  &&  (modelo_veiculo != null )  && (cod_cor != null )  && (ano_veiculo != null )  && (cod_motor != null ) && (cod_fornecedor != null )  && (preco_veiculo != null )  && (cod_combustivel != null )  && (cod_cambio != null)  && (numero_chassi != null)  && (estoque != null ) && (destaque != null) ) {
			if(!modelo_veiculo.equals("")) {
				
				Integer ano_veiculoBack = Integer.parseInt(ano_veiculo);
				Integer cod_marcaBack = Integer.parseInt(cod_marca);
				Integer cod_corBack = Integer.parseInt(cod_cor);
				Integer ano_veiculo1 = Integer.parseInt(ano_veiculo);
				Integer cod_motorBack = Integer.parseInt(cod_motor);
				Integer cod_combustivelBack = Integer.parseInt(cod_combustivel);
				Integer cod_cambioBack = Integer.parseInt(cod_cambio);
				Integer cod_fornecedorBack = Integer.parseInt(cod_fornecedor);
				Double preco_veiculoBack = Double.parseDouble(preco_veiculo);
				Boolean estoqueBack = Boolean.parseBoolean(estoque);
				Boolean destaqueBack = Boolean.parseBoolean(destaque);
				
//				Integer cod_marca, String modelo_veiculo, Integer cod_cor, Integer ano_veiculo, Integer cod_motor, Double preco_veiculo,
//				   Integer cod_combustivel, Integer cod_cambio, Integer cod_fornecedor, String numero_chassi, Boolean estoque, Boolean destaque
//				
				Veiculo veiculo1 = new Veiculo(cod_marcaBack, modelo_veiculo, cod_corBack, ano_veiculo1, cod_motorBack, preco_veiculoBack, cod_combustivelBack, cod_cambioBack, cod_fornecedorBack, numero_chassi, estoqueBack, destaqueBack);
				
				veic.adicionarVeiculo(veiculo1);
			}
		}
		
		response.sendRedirect("ServletVeiculo");
	}
	
	private void selectAllVeiculos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("listVeiculo", this.veic.mostrarVeiculo());
		request.setAttribute("contagemVeiculos", this.veic.contarVeiculos());
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
		
		String modelo_veiculo = request.getParameter("modelo_veiculo");
		String marca_veiculo = request.getParameter("marca_veiculo");
		String nome_cor = request.getParameter("nome_cor");
		String ano_veiculo = request.getParameter("ano_veiculo");
//		Integer ano_veiculo = Integer.parseInt(request.getParameter("ano_veiculo"));
		String motor_veiculo = request.getParameter("motor_veiculo");
		String potencia_cv = request.getParameter("potencia_cv");
		String preco_veiculo = request.getParameter("preco_veiculo");
//		Double preco_veiculo = Double.parseDouble(request.getParameter("preco_veiculo"));
		String tipo_combustivel = request.getParameter("tipo_combustivel");
		String cambio = request.getParameter("cambio");
		String numero_chassi = request.getParameter("numero_chassi").replace(".", "");
		String estoque = request.getParameter("estoque");
//		Boolean estoque = Boolean.parseBoolean(request.getParameter("estoque"));
		String destaque = request.getParameter("destaque");
		
		
		if(  (marca_veiculo != null)  &&  (modelo_veiculo != null )  && (nome_cor != null )  && (ano_veiculo != null )  && (motor_veiculo != null ) && (potencia_cv != null )  && (preco_veiculo != null )  && (tipo_combustivel != null )  && (cambio != null)  && (numero_chassi != null)  && (estoque != null ) && (destaque != null )) {
			if(!modelo_veiculo.equals("")) {
				
				Integer ano_veiculoBack = Integer.parseInt(ano_veiculo);
				Double preco_veiculoBack = Double.parseDouble(preco_veiculo);
				Boolean estoqueBack = Boolean.parseBoolean(estoque);
				Boolean destaqueBack = Boolean.parseBoolean(destaque);
				
				Veiculo veiculo1 = new Veiculo(marca_veiculo, modelo_veiculo, nome_cor, ano_veiculoBack, motor_veiculo, potencia_cv, preco_veiculoBack, tipo_combustivel, cambio, numero_chassi, estoqueBack, destaqueBack);
				veic.atualizarVeiculo(veiculo1);
			}
		}
		
		response.sendRedirect("ServletVeiculo");
	}
	
}
