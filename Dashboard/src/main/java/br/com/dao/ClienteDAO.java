package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import br.com.conexao.Conexao;

import br.com.entidade.Cliente;




public class ClienteDAO {
	
	public ClienteDAO() {
		super();
	}
	

//	MOSTRANDO CLIENTE INICIO
	public ArrayList<Cliente> mostrarCliente() {
			
			Conexao c = Conexao.getInstance();
			Connection con = c.getConnection();
			
			ArrayList<Cliente> lista = new ArrayList<Cliente>();
			
			try {
				PreparedStatement p = con.prepareStatement("select tb_cliente.cod_cliente , tb_cliente.nome_cliente,tb_cliente.razao_social ,tb_cliente.email_cliente ,tb_cliente.telefone_cliente ,tb_cliente.data_nascimento ,tb_endereco.cep_endereco ,\r\n"
						+ "tb_endereco.rua_endereco ,tb_endereco.complemento, tb_endereco.numero_endereco , tb_endereco.bairro ,tb_endereco.cidade,\r\n"
						+ "tb_endereco.uf, tb_cliente.numero_documento \r\n"
						+ "from tb_endereco_cliente \r\n"
						+ "inner join tb_cliente on tb_cliente.cod_cliente = tb_endereco_cliente.cod_cliente \r\n"
						+ "inner join tb_endereco  on tb_endereco.cod_endereco = tb_endereco_cliente.cod_endereco\r\n"
						+ "order by cod_cliente");
				ResultSet r = p.executeQuery();
				
				while (r.next()) {
					String cod_cliente = r.getString("cod_cliente"); 
								
					String nome_cliente = r.getString("nome_cliente"); 

					String razao_social = r.getString("razao_social"); 
					
					String email_cliente = r.getString("email_cliente"); 
					
					String telefone_cliente = r.getString("telefone_cliente"); 
					
					Date data_nascimento = r.getDate("data_nascimento"); 
					
					String cep_endereco = r.getString("cep_endereco"); 
					
					String rua_endereco = r.getString("rua_endereco"); 
										
					String complemento = r.getString("complemento"); 
					
					String numero_endereco = r.getString("numero_endereco"); 
					
					String bairro = r.getString("bairro"); 
					
					String cidade = r.getString("cidade"); 
					
					String uf = r.getString("uf"); 
					
					String numero_documento = r.getString("numero_documento");
						
				
					Cliente c1 = new Cliente(cod_cliente, nome_cliente,razao_social,email_cliente, data_nascimento,telefone_cliente,cep_endereco,rua_endereco,complemento,numero_endereco,bairro,cidade,uf,numero_documento);
					c1.setCod_cliente(cod_cliente);
					lista.add(c1);
					
					
				}
	
	
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return lista;
		}
//	MOSTRANDO CLIENTE FIM
	
////////	MOSTRANDO ENDEREÇO CLIENTE  /////////////////
	
	public ArrayList<Cliente> mostrarEndereco() {
		
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		ArrayList<Cliente> lista = new ArrayList<Cliente>();
		
		try {
			PreparedStatement p = con.prepareStatement("select tb_cliente.cod_cliente,tb_endereco.cep_endereco,tb_endereco.rua_endereco ,tb_endereco.complemento ,tb_endereco.numero_endereco ,\r\n"
					+ "tb_endereco.bairro,tb_endereco.cidade ,tb_endereco.uf \r\n"
					+ "from tb_endereco_cliente \r\n"
					+ "inner join tb_endereco on tb_endereco.cod_endereco = tb_endereco_cliente.cod_endereco \r\n"
					+ "inner join tb_cliente on tb_cliente.cod_cliente = tb_endereco_cliente.cod_cliente\r\n"
					+ "where tb_cliente.cod_cliente = 2");
			ResultSet r = p.executeQuery();
			
			while (r.next()) {
				String cod_cliente = r.getString("cod_cliente"); 
							
				String cep_endereco = r.getString("cep_endereco"); 

				String rua_endereco = r.getString("rua_endereco"); 
				
				String complemento = r.getString("complemento"); 
				
				String numero_endereco = r.getString("numero_endereco"); 
				
				String bairro = r.getString("bairro"); 
				
				String cidade = r.getString("cidade"); 
				
				String uf = r.getString("uf"); 
					
			
				Cliente c2 = new Cliente(cod_cliente,cep_endereco,rua_endereco,complemento,numero_endereco,bairro,cidade,uf);
				c2.setCod_cliente(cod_cliente);
				lista.add(c2);
				
				
			}


		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return lista;
	}
	
//	MOSTRANDO ENDEREÇO CLIENTE FIM
	
	
	
	
	
////////MOSTRANDO PEDIDO CLIENTE  /////////////////
	
public ArrayList<Cliente> mostrarPedido() {

Conexao c = Conexao.getInstance();
Connection con = c.getConnection();

ArrayList<Cliente> lista = new ArrayList<Cliente>();

try {
	PreparedStatement p = con.prepareStatement("select tb_cliente.cod_cliente , tb_cliente.nome_cliente,tb_cliente.razao_social ,tb_cliente.email_cliente ,\r\n"
			+ "	   tb_cliente.telefone_cliente ,tb_pedido.cod_pedido ,\r\n"
			+ "	   tb_pedido.valor_total_pedido,\r\n"
			+ "	   tb_forma_pagamento.descricao_forma_pagamento, tb_pedido.data_envio, tb_status.status,	\r\n"
			+ "	    tb_frete.unidade_federativa, tb_frete.valor_frete,\r\n"
			+ "	   tb_cartao.nome_titular, tb_cartao.numero_cartao,\r\n"
			+ "	   tb_item_pedido.cod_veiculo, tb_veiculo.modelo_veiculo \r\n"
			+ "from tb_pedido \r\n"
			+ "inner join tb_cliente on tb_cliente.cod_cliente = tb_pedido.cod_pedido \r\n"
			+ "inner join tb_forma_pagamento on tb_forma_pagamento.cod_forma_pagamento = tb_pedido.cod_forma_pagamento \r\n"
			+ "inner join tb_status on tb_status.cod_status = tb_pedido.cod_status\r\n"
			+ "inner join tb_frete on tb_frete.cod_frete = tb_pedido.cod_frete \r\n"
			+ "inner join tb_cartao on tb_cartao.cod_cartao = tb_pedido.cod_forma_pagamento \r\n"
			+ "inner join tb_item_pedido on tb_item_pedido.cod_pedido = tb_pedido.cod_pedido \r\n"
			+ "inner join tb_veiculo on tb_veiculo.cod_veiculo = tb_item_pedido.cod_veiculo \r\n"
			+ "order by cod_cliente");
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

		String nome_titular = r.getString("nome_titular");

		String numero_cartao = r.getString("numero_cartao");

		String cod_veiculo = r.getString("cod_veiculo");
		
		String modelo_veiculo = r.getString("modelo_veiculo");
		
			
	
		Cliente c3 = new Cliente(	
				cod_cliente,nome_cliente,razao_social,email_cliente,telefone_cliente,cod_pedido,valor_total_pedido,
				descricao_forma_pagamento,data_envio,status,unidade_federativa,valor_frete,nome_titular,
				numero_cartao,cod_veiculo,modelo_veiculo);
		c3.setCod_cliente(cod_cliente);
		lista.add(c3);
		
		
	}


} catch (SQLException e) {
	e.printStackTrace();
}

return lista;
}

//////// FIM  PEDIDO CLIENTE  /////////////////
	
	
	
	
	public Integer contarUsuarios() {
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		 try {
			 Integer cont = null;
			 PreparedStatement p = con.prepareStatement("select count(*) as NumeroDeUsuarios from tb_cliente");
			 ResultSet r = p.executeQuery();
			 r.next();
			 
			 cont = r.getInt("NumeroDeUsuarios");
			 
			 System.out.println(cont);
			
			//System.out.println(cont);
			r.close();
			p.close();
			
			return cont;
		 } catch (SQLException e) {
			e.printStackTrace();
		}
		return null;    		
    }
	
	
}






