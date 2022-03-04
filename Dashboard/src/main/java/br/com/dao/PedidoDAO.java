package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import br.com.conexao.Conexao;
import br.com.entidade.Pedido;

public class PedidoDAO {

	public PedidoDAO() {
		super();
	}

	public ArrayList<Pedido> mostrarPedido() {
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();

		ArrayList<Pedido> lista = new ArrayList<Pedido>();

		try {

			PreparedStatement p = con.prepareStatement(
					"select cod_pedido, valor_total_pedido, data_pedido, cod_veiculo, modelo_veiculo, ano_veiculo, numero_chassi,"
					+ "marca_veiculo,nome_cliente,numero_documento,telefone_cliente,razao_social, email_cliente,cep_endereco,"
					+ "rua_endereco, numero_endereco,bairro,cidade,uf,valor_frete,unidade_federativa,descricao_forma_pagamento,"
					+ "tb_status.status\r\n"
					
									
			+ "\r\n from tb_veiculo tv\r\n" + "\r\n"
			+ " inner join tb_pedido on (tb_pedido.cod_veiculo = tb_veiculo.cod_veiculo)\r\n"
			+ " inner join tb_marca on (tb_marca.cod_marca = tb_marca.cod_marca)\r\n"
			+ " inner join tb_cliente on (tb_cliente.nome_cliente = tb_cliente.nome_cliente)\r\n"
			+ " inner join tb_endereco on (tb_endereco.cep_endereco = tb_endereco.cep_endereco)r\n" 
			+ " inner join tb_frete on (tb_frete.valor_frete = tb_frete.valor_frete)r\n"
			+ " inner join tb_forma_pagamento on (tb_forma_pagamento.descricao_forma_pagamento = tb_forma_pagamento.descricao_forma_pagamento)r\n"
			+ " inner join tb_status on (tb_status.status = tb_status.status)") ;
			ResultSet r = p.executeQuery();

			while (r.next()) {

				
				Integer cod_pedido = r.getInt("cod_pedido");
				String valor_total_pedido = r.getString("valor_total_pedido");
				Date data_pedido = r.getDate("data_pedido");
				Integer cod_veiculo = r.getInt("cod_veiculo");
				String modelo_veiculo = r.getString("modelo_veiculo");
				Integer ano_veiculo = r.getInt("ano_veiculo");
				String numero_chassi = r.getString("numero_chassi");
				String marca_veiculo = r.getString("marca_veiculo");
				String nome_cliente = r.getString("nome_cliente");
				String numero_documento = r.getString("numero_documento");
				String telefone_cliente = r.getString("telefone_cliente");
				String razao_social = r.getString("razao_social");
				String email_cliente = r.getString("email_cliente");
				String cep_endereco = r.getString("cep_endereco");
				String rua_endereco = r.getString("rua_endereco");
				String numero_endereco = r.getString("numero_endereco");
				String bairro = r.getString("bairro");
				String cidade = r.getString("cidade");
				String uf = r.getString("uf");
				String valor_frete = r.getString("valor_frete");
				String unidade_federativa = r.getString("unidade_federativa");
				String descricao_forma_pagamento = r.getString("descricao_forma_pagamento");
				String status = r.getString("status");

				Pedido ped = new Pedido(cod_pedido,valor_total_pedido,data_pedido,cod_veiculo, modelo_veiculo,ano_veiculo, numero_chassi,marca_veiculo, nome_cliente, numero_documento,telefone_cliente,
						razao_social,email_cliente, cep_endereco, rua_endereco, numero_endereco, bairro, cidade, uf, valor_frete, unidade_federativa, descricao_forma_pagamento, status);

				ped.setCod_pedido(cod_pedido);
				lista.add(ped);

			}
			r.close();
			p.close();

		} catch (SQLException e) {
			e.printStackTrace();

		}
		return lista;

	}

}
