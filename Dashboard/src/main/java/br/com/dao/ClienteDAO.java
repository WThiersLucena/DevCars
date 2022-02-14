package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import br.com.conexao.Conexao;

import br.com.entidade.Cliente;
import br.com.entidade.Veiculo;



public class ClienteDAO {
	
	public ClienteDAO() {
		super();
	}

//	public void adicionarCliente(Cliente cliente) {
//
//		Conexao c = Conexao.getInstance();
//		Connection con = c.getConnection();
//		
//		try {
//			PreparedStatement p = con.prepareStatement("insert into tb_cliente (cod_cliente, tipo_documento, numero_documento, nome_cliente, data_nascimento, email_cliente, telefone_cliente, senha_cliente, inscricao_estadual, razao_social) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
//			
//			p.setInt(1, cliente.getCod_cliente());
//			p.setInt(2, cliente.getTipo_documento());
//			p.setInt(3, cliente.getNumero_documento());
//			p.setString(4, cliente.getNome_cliente());
//			p.setDate(5, cliente.getData_nascimento());
//			p.setInt(6, cliente.getEmail_cliente());
//			p.setInt(7, cliente.getTelefone_cliente());
//			p.setInt(8, cliente.getInscricao_estadual());
//			p.setInt(9, cliente.getRazao_social());
//			
//			
//			System.out.println(p);
//			p.executeUpdate();
//			System.out.println("Cliente Inserido");
//			p.close();
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}
	
//	public ArrayList<Cliente> mostrarCliente() {
//		
//		Conexao c = Conexao.getInstance();
//		Connection con = c.getConnection();
//		
//		ArrayList<Cliente> lista = new ArrayList<Cliente>();
//		
//		try {
//			PreparedStatement p = con.prepareStatement("select * from tb_cliente");
//			
//			
//			ResultSet r = p.executeQuery();
//			
//			while (r.next()) {
//				Integer cod_cliente = r.getInt("cod_cliente"); 
//				
//				String tipo_documento = r.getString("tipo_documento"); 
//				
//				String numero_documento =  r.getString("numero_documento"); 
//				
//				String nome_cliente =  r.getString("nome_cliente"); 
//				
//				Date data_nascimento = r.getDate("data_nascimento"); 
//				
//				String email_cliente =  r.getString("email_cliente"); 
//				
//				String telefone_cliente =  r.getString("telefone_cliente");
//				
//				String senha_cliente =  r.getString("senha_cliente");
//				
//				String inscricao_estadual =  r.getString("inscricao_estadual");
//				
//				String razao_social =  r.getString("razao_social");
//				
//				Cliente c1 = new Cliente(cod_cliente, tipo_documento, numero_documento, nome_cliente, data_nascimento, email_cliente, telefone_cliente, senha_cliente, inscricao_estadual, razao_social);
//				
//								
//				c1.setCod_cliente(cod_cliente);
//				lista.add(c1);
//			}
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		
//		return lista;
//	}
	

	
	public ArrayList<Cliente> mostrarCliente() {
			
			Conexao c = Conexao.getInstance();
			Connection con = c.getConnection();
			
			ArrayList<Cliente> lista = new ArrayList<Cliente>();
			
			try {
				PreparedStatement p = con.prepareStatement("select cod_cliente, numero_documento , nome_cliente, telefone_cliente, data_nascimento, razao_social,email_cliente\r\n"
						+ "from tb_cliente tc \r\n"
						+ "\r\n"
						+ "order by cod_cliente;");
				ResultSet r = p.executeQuery();
				
				while (r.next()) {
					Integer cod_cliente = r.getInt("cod_cliente"); 
					String numero_documento =  r.getString("numero_documento"); 
					String nome_cliente =  r.getString("nome_cliente"); 
					String telefone_cliente =  r.getString("telefone_cliente");
					Date data_nascimento = r.getDate("data_nascimento"); 
					String razao_social =  r.getString("razao_social");
					String email_cliente =  r.getString("email_cliente"); 					
				
					Cliente c1 = new Cliente(cod_cliente, numero_documento,nome_cliente,telefone_cliente,data_nascimento,razao_social,email_cliente);
					c1.setCod_cliente(cod_cliente);
					lista.add(c1);
				}
	
	
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return lista;
		}
		
				
	
	
	
	}





