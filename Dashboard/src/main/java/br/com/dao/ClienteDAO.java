package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import br.com.conexao.Conexao;
import br.com.entidade.CartaoCliente;
import br.com.entidade.Cliente;




public class ClienteDAO {
	
	public ClienteDAO() {
		super();
	}
	

////	MOSTRANDO CLIENTE INICIO
//	public ArrayList<Cliente> mostrarCliente() {
//			
//			Conexao c = Conexao.getInstance();
//			Connection con = c.getConnection();
//			
//			ArrayList<Cliente> lista = new ArrayList<Cliente>();
//			
//			try {
//				PreparedStatement p = con.prepareStatement("select tb_cliente.cod_cliente , tb_cliente.nome_cliente,tb_cliente.razao_social ,tb_cliente.email_cliente ,tb_cliente.telefone_cliente ,tb_cliente.data_nascimento ,tb_endereco.cep_endereco ,\r\n"
//						+ "tb_endereco.rua_endereco ,tb_endereco.complemento, tb_endereco.numero_endereco , tb_endereco.bairro ,tb_endereco.cidade,\r\n"
//						+ "tb_endereco.uf, tb_cliente.numero_documento \r\n"
//						+ "from tb_endereco_cliente \r\n"
//						+ "inner join tb_cliente on tb_cliente.cod_cliente = tb_endereco_cliente.cod_cliente \r\n"
//						+ "inner join tb_endereco  on tb_endereco.cod_endereco = tb_endereco_cliente.cod_endereco\r\n"
//						+ "order by cod_cliente");
//				ResultSet r = p.executeQuery();
//				
//				while (r.next()) {
//					String cod_cliente = r.getString("cod_cliente"); 
//								
//					String nome_cliente = r.getString("nome_cliente"); 
//
//					String razao_social = r.getString("razao_social"); 
//					
//					String email_cliente = r.getString("email_cliente"); 
//					
//					String telefone_cliente = r.getString("telefone_cliente"); 
//					
//					Date data_nascimento = r.getDate("data_nascimento"); 
//					
//					String cep_endereco = r.getString("cep_endereco"); 
//					
//					String rua_endereco = r.getString("rua_endereco"); 
//										
//					String complemento = r.getString("complemento"); 
//					
//					String numero_endereco = r.getString("numero_endereco"); 
//					
//					String bairro = r.getString("bairro"); 
//					
//					String cidade = r.getString("cidade"); 
//					
//					String uf = r.getString("uf"); 
//					
//					String numero_documento = r.getString("numero_documento");
//						
//				
//					Cliente c1 = new Cliente(cod_cliente, nome_cliente,razao_social,email_cliente, data_nascimento,telefone_cliente,cep_endereco,rua_endereco,complemento,numero_endereco,bairro,cidade,uf,numero_documento);
//					c1.setCod_cliente(cod_cliente);
//					lista.add(c1);
//					
//					
//				}
//	
//	
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//			
//			return lista;
//		}
////	MOSTRANDO CLIENTE FIM
	
	
	
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
	
	
	
	
	
	
	
	
	
	
	
	
	
//	MOSTRANDO CLIENTE INICIO
	public ArrayList<Cliente> mostrarCliente() {
			
			Conexao c = Conexao.getInstance();
			Connection con = c.getConnection();
			
			ArrayList<Cliente> lista = new ArrayList<Cliente>();
			
			try {
				PreparedStatement p = con.prepareStatement("select * from tb_cliente ");
				ResultSet r = p.executeQuery();
				
				while (r.next()) {
					String cod_cliente = r.getString("cod_cliente"); 
								
					String nome_cliente = r.getString("nome_cliente"); 

					String razao_social = r.getString("razao_social"); 
					
					String numero_documento = r.getString("numero_documento"); 
					
					String email_cliente = r.getString("email_cliente"); 
					
					String telefone_cliente = r.getString("telefone_cliente"); 
					
					Date data_nascimento = r.getDate("data_nascimento"); 
					
					
				
					Cliente c1 = new Cliente(cod_cliente, nome_cliente,razao_social,numero_documento,email_cliente, data_nascimento,telefone_cliente);
					c1.setCod_cliente(cod_cliente);
					lista.add(c1);
					
					
				}
	
	
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return lista;
		}
//	MOSTRANDO CLIENTE FIM

	
	
	//MOSTRAR CART�ES
	public ArrayList<CartaoCliente> mostrarCartoes() {
		
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		ArrayList<CartaoCliente> cartoes = new ArrayList<CartaoCliente>();
		
		try {
			PreparedStatement p = con.prepareStatement("select tcc.cod_cliente, tc.cod_cartao , tcc.nome_cliente, tcc.razao_social , tc.numero_cartao, descricao_modalidade\r\n"
					+ "from tb_cartao tc\r\n"
					+ "inner join  tb_modalidade_cartao tmc on (tmc.cod_modalidade = tc.cod_modalidade)\r\n"
					+ "inner join tb_cliente tcc on (tcc.cod_cliente = tc.cod_cliente)");
			ResultSet r = p.executeQuery();
			
			while (r.next()) {
				
				Integer cod_cliente = r.getInt("cod_cliente");
				Integer cod_cartao = r.getInt("cod_cliente");
				String nome_cliente = r.getString("cod_cliente");
				String razao_social = r.getString("cod_cliente");
				String numero_cartao = r.getString("cod_cliente"); 
				String descricao_modalidade = r.getString("cod_cliente");
				
			
				 
				CartaoCliente cart = new CartaoCliente(cod_cliente, cod_cartao, nome_cliente, razao_social, numero_cartao, descricao_modalidade);
				cart.setCod_cliente(cod_cliente);
				cartoes.add(cart);
				
				
			}


		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cartoes;
	}
}






