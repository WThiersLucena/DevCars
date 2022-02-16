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
					"select cod_pedido, nome_cliente, razao_social, numero_documento, email_cliente,telefone_cliente, descricao_forma_pagamento, valor_frete,valor_total_pedido, data_pedido,status\r\n"
							+ "\r\n" + "from tb_pedido tp\r\n" + "\r\n"
							+ "inner join tb_cliente tc on (tp.cod_cliente = tc.cod_cliente )\r\n"
							+ "inner join tb_forma_pagamento tfp on (tp.cod_forma_pagamento = tfp.cod_forma_pagamento)\r\n"
							+ "inner join tb_frete tf on (tp.cod_frete = tf.cod_frete)\r\n"
							+ "inner join tb_status ts on (tp.cod_status = ts.cod_status)");
			ResultSet r = p.executeQuery();

			while (r.next()) {

				Integer cod_pedido = r.getInt("cod_pedido");
				String nome_cliente = r.getString("nome_cliente");
				String razao_social = r.getString("razao_social");
				String numero_documento = r.getString("numero_documento");
				String email_cliente = r.getString("email_cliente");
				String telefone_cliente = r.getString("telefone_cliente");
				String descricao_forma_pagamento = r.getString("descricao_forma_pagamento");
				String valor_frete = r.getString("valor_frete");
				String valor_total_pedido = r.getString("valor_total_pedido");
				Date data_pedido = r.getDate("data_pedido");
				String status = r.getString("status");

				Pedido ped = new Pedido(cod_pedido, nome_cliente, razao_social, numero_documento, email_cliente,
						telefone_cliente, descricao_forma_pagamento, valor_frete, valor_total_pedido, data_pedido,
						status);

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
