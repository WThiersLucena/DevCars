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
					"select  tp.cod_pedido,\r\n"
					+ "		tp.valor_total_pedido,\r\n"
					+ "		tp.data_pedido,\r\n"
					+ "		tc.nome_cliente,\r\n"
					+ "		tc.numero_documento,\r\n"
					+ "		tc.telefone_cliente,\r\n"
					+ "		tc.email_cliente,\r\n"
					+ "		tc.razao_social,\r\n"
					+ "		te.cep_endereco,\r\n"
					+ "		te.rua_endereco,\r\n"
					+ "		te.numero_endereco,\r\n"
					+ "		te.bairro,\r\n"
					+ "		te.cidade,\r\n"
					+ "		te.uf,\r\n"
					+ "		tfp.descricao_forma_pagamento,\r\n"
					+ "		tf.valor_frete,\r\n"
					+ " 		tf.unidade_federativa,\r\n"
					+ " 		ts.status,\r\n"
					+ " 		tm.marca_veiculo,\r\n"
					+ " 		tv.modelo_veiculo,\r\n"
					+ "		tv.ano_veiculo,\r\n"
					+ "		tv.numero_chassi,\r\n"
					+ "		tv.preco_veiculo,\r\n"
					+ "		tc2.nome_cor, \r\n"
					+ "		tm2.motor_veiculo,\r\n"
					+ "		tm2.potencia_cv,\r\n"
					+ "		tc3.tipo_combustivel,\r\n"
					+ "		tc4.cambio\r\n"
					+ "		\r\n"
					+ "		\r\n"
					+ "		-- tv.marca_veiculo, \r\n"
					+ "		\r\n"
					+ "		\r\n"
					+ "		from tb_pedido tp \r\n"
					+ "inner join tb_cliente tc on tp.cod_cliente = tc.cod_cliente\r\n"
					+ "inner join tb_endereco te on tp.cod_endereco = te.cod_endereco\r\n"
					+ "inner join tb_forma_pagamento tfp on tp.cod_forma_pagamento = tfp.cod_forma_pagamento\r\n"
					+ "inner join tb_frete tf on tp.cod_frete = tf.cod_frete\r\n"
					+ "inner join tb_status ts on tp.cod_status = ts.cod_status \r\n"
					+ "inner join tb_veiculo tv on tp.cod_veiculo = tv.cod_veiculo\r\n"
					+ "inner join tb_marca tm on tm.cod_marca = tv.cod_marca\r\n"
					+ "inner join tb_cor tc2 on tv.cod_cor = tc2.cod_cor \r\n"
					+ "inner join tb_motor tm2 on tv.cod_motor = tm2.cod_motor\r\n"
					+ "inner join tb_combustivel tc3 on tv.cod_combustivel = tc3.cod_combustivel \r\n"
					+ "inner join tb_cambio tc4 on tv.cod_cambio = tc4.cod_cambio ;\r\n"
					+ "\r\n"
					+ "\r\n"
					+ "		") ;
			ResultSet r = p.executeQuery();

			while (r.next()) {

				
				 Integer cod_pedido = r.getInt("cod_pedido");
				 Double valor_total_pedido = r.getDouble("valor_total_pedido");
				 Date data_pedido = r.getDate("data_pedido");
				 String nome_cliente = r.getString("nome_cliente");
				 String numero_documento = r.getString("numero_documento");
				 String telefone_cliente = r.getString("telefone_cliente");
				 String email_cliente = r.getString("email_cliente");
				 String razao_social = r.getString("razao_social");
				 String cep_endereco = r.getString("cep_endereco");
				 String rua_endereco = r.getString("rua_endereco");
				 Integer numero_endereco = r.getInt("numero_endereco");
				 String bairro = r.getString("bairro");
				 String cidade = r.getString("cidade");
				 String uf = r.getString("uf");
				 String	descricao_forma_pagamento = r.getString("descricao_forma_pagamento");
				 Double valor_frete = r.getDouble("valor_frete");
				 String	unidade_federativa = r.getString("unidade_federativa");
				 String	status = r.getString("status");
				 String	marca_veiculo = r.getString("marca_veiculo");
				 String	modelo_veiculo = r.getString("modelo_veiculo");
				 Integer ano_veiculo = r.getInt("ano_veiculo");
				 String numero_chassi = r.getString("numero_chassi");
				 Double preco_veiculo = r.getDouble("preco_veiculo");
				 String nome_cor = r.getString("nome_cor");
				 String motor_veiculo = r.getString("motor_veiculo");
				 String potencia_cv = r.getString("potencia_cv");
				 String tipo_combustivel = r.getString("tipo_combustivel");
				 String cambio = r.getString("cambio");

				Pedido ped = new Pedido(cod_pedido,valor_total_pedido,data_pedido,nome_cliente,numero_documento,telefone_cliente,email_cliente,
						razao_social,cep_endereco,rua_endereco,numero_endereco,bairro,cidade,uf,descricao_forma_pagamento,valor_frete,unidade_federativa,
				 		status,marca_veiculo,modelo_veiculo,ano_veiculo,numero_chassi,preco_veiculo,nome_cor,motor_veiculo,potencia_cv,tipo_combustivel,
						cambio);

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
