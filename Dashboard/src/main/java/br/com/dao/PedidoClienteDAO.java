package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.conexao.Conexao;
import br.com.entidade.Cliente;
import br.com.entidade.PedidoCliente;

public class PedidoClienteDAO {

	public PedidoClienteDAO() {
		super();
	}
		
	
////////MOSTRANDO PEDIDO CLIENTE  /////////////////
	
	public ArrayList<PedidoCliente> mostrarPedido() {

		Conexao c = Conexao.getInstance();
	Connection con = c.getConnection();

	ArrayList<PedidoCliente> lista = new ArrayList<PedidoCliente>();
	
	try {
		PreparedStatement p = con.prepareStatement("select tb_cliente.cod_cliente , tb_cliente.nome_cliente,tb_cliente.razao_social ,tb_cliente.email_cliente ,\r\n"
		+ "	   tb_cliente.telefone_cliente ,tb_pedido.cod_pedido ,\r\n"
		+ "	   tb_pedido.valor_total_pedido,\r\n"
		+ "	   tb_forma_pagamento.descricao_forma_pagamento, tb_pedido.data_envio, tb_status.status,	\r\n"
		+ "	    tb_frete.unidade_federativa, tb_frete.valor_frete\r\n"
		+ "from tb_pedido \r\n"
		+ "inner join tb_cliente on tb_cliente.cod_cliente = tb_pedido.cod_pedido \r\n"
		+ "inner join tb_forma_pagamento on tb_forma_pagamento.cod_forma_pagamento = tb_pedido.cod_forma_pagamento \r\n"
		+ "inner join tb_status on tb_status.cod_status = tb_pedido.cod_status\r\n"
		+ "inner join tb_frete on tb_frete.cod_frete = tb_pedido.cod_frete\r\n"
		+ "order by cod_pedido");
	ResultSet r = p.executeQuery();
	
	while (r.next()) {
		String cod_cliente = r.getString("cod_cliente"); 
					
		String nome_cliente = r.getString("nome_cliente"); 
	
		String razao_social = r.getString("razao_social"); 
		
		String email_cliente = r.getString("email_cliente"); 
		
		String telefone_cliente = r.getString("telefone_cliente"); 
		
		String cod_pedido = r.getString("cod_pedido"); 
		
		String valor_total_pedido = r.getString("valor_total_pedido"); 
		
		String descricao_forma_pagamento = r.getString("descricao_forma_pagamento"); 
	
		String data_envio = r.getString("data_envio");
	
		String status = r.getString("status");
	
		String unidade_federativa = r.getString("unidade_federativa");
	
		String valor_frete = r.getString("valor_frete");		
	
		PedidoCliente c3 = new PedidoCliente(	
				cod_cliente,nome_cliente,razao_social,email_cliente,telefone_cliente,cod_pedido,valor_total_pedido,
				descricao_forma_pagamento,data_envio,status,unidade_federativa,valor_frete);
		c3.setCod_cliente(cod_cliente);
		lista.add(c3);
		
		
}
	
	
} catch (SQLException e) {
	e.printStackTrace();
}
	
	return lista;
}
	
	////////FIM  PEDIDO CLIENTE  /////////////////
	
	
		
		
		
	}
