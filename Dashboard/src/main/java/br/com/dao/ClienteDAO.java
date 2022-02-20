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
	

	
	public ArrayList<Cliente> mostrarCliente() {
			
			Conexao c = Conexao.getInstance();
			Connection con = c.getConnection();
			
			ArrayList<Cliente> lista = new ArrayList<Cliente>();
			
			try {
				PreparedStatement p = con.prepareStatement("select tb_cliente.cod_cliente , tb_cliente.nome_cliente,tb_cliente.razao_social ,tb_cliente.email_cliente ,tb_cliente.telefone_cliente ,tb_cliente.data_nascimento ,tb_endereco.cep_endereco ,\r\n"
						+ "	   tb_endereco.rua_endereco ,tb_endereco.complemento, tb_endereco.numero_endereco , tb_endereco.bairro ,tb_endereco.cidade,\r\n"
						+ "	   tb_endereco.uf \r\n"
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
					
						
				
					Cliente c1 = new Cliente(cod_cliente, nome_cliente,razao_social,email_cliente, data_nascimento,telefone_cliente,cep_endereco,rua_endereco,complemento,numero_endereco,bairro,cidade,uf);
					c1.setCod_cliente(cod_cliente);
					lista.add(c1);
					
					
				}
	
	
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return lista;
		}
		

	
	
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

				
	
//	public ArrayList<Cliente> mostrarClienteDetalhes() {
//		
//		Conexao c = Conexao.getInstance();
//		Connection con = c.getConnection();
//		
//		ArrayList<Cliente> listaDetalhes = new ArrayList<Cliente>();
//		
//		try {
//			PreparedStatement p = con.prepareStatement("select tb_cliente.cod_cliente , tb_cliente.nome_cliente,tb_cliente.razao_social ,tb_endereco.cep_endereco ,\r\n"
//					+ "	   tb_endereco.rua_endereco, tb_endereco.numero_endereco ,tb_endereco.complemento, tb_endereco.bairro ,tb_endereco.cidade,\r\n"
//					+ "	   tb_endereco.uf \r\n"
//					+ "from tb_endereco_cliente \r\n"
//					+ "inner join tb_cliente on tb_cliente.cod_cliente = tb_endereco_cliente.cod_cliente \r\n"
//					+ "inner join tb_endereco  on tb_endereco.cod_endereco = tb_endereco_cliente.cod_endereco\r\n"
//					+ "\r\n"
//					+ "order by cod_cliente;");
//			ResultSet r = p.executeQuery();
//			
//			while (r.next()) {
//				String cod_cliente2 = r.getString("cod_cliente");
//				String nome_cliente = r.getString("nome_cliente");
//				String razao_social = r.getString("razao_social");
//				String cep_endereco = r.getString("cep_endereco");
//				String rua_endereco = r.getString("rua_endereco");
//				String numero_endereco = r.getString("numero_endereco");
//				String complemento = r.getString("complemento");				
//				String bairro = r.getString("bairro");
//				String uf = r.getString("uf");
//				
//			
//				Cliente c2 = new Cliente(cod_cliente2, nome_cliente,razao_social,cep_endereco,rua_endereco,numero_endereco,complemento,bairro,uf);
//				c2.setCod_cliente(cod_cliente2);
//				listaDetalhes.add(c2);
//			}
//
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		
//		return listaDetalhes;
//	}
	
	
	}





