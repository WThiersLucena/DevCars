package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.conexao.Conexao;
import br.com.entidade.Fornecedor;

public class FornecedorDAO {

	public FornecedorDAO() {
		
	}
	
	//Método que ADICIONA Fornecedor
	
	public void addSupplier(Fornecedor addFornecedor) {
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		try {
			PreparedStatement p = con.prepareStatement("insert into tb_fornecedor (cnpj, razao_social, inscricao_estadual, email_fornecedor, telefone_fornecedor) values (?, ?, ?, ?, ?)");
			p.setString(1, addFornecedor.getCnpj()); 
			p.setString(2, addFornecedor.getRazao_social());
			p.setString(3, addFornecedor.getInscricao_estadual());
			p.setString(4, addFornecedor.getEmail_fornecedor());
			p.setString(5, addFornecedor.getTelefone_fornecedor());
			System.out.println(p);
			p.executeUpdate();
			System.out.println("Adicionar fornecedor: executado");
			p.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	//Método que OBTEM LISTA de Fornecedores
	
	public ArrayList<Fornecedor> getListSupplier(){
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		ArrayList<Fornecedor> listaFornecedor = new ArrayList<Fornecedor>();
		try {
			PreparedStatement p = con.prepareStatement("select * from tb_fornecedor");
			ResultSet r = p.executeQuery();			
			
			while (r.next()) {
				Integer cod_fornecedor = r.getInt("cod_fornecedor");
				String cnpj = r.getString("cnpj");
				String razao_social = r.getString("razao_social");
				String inscricao_estadual = r.getString("inscricao_estadual");
				String email_fornecedor = r.getString("email_fornecedor");
				String telefone_fornecedor = r.getString("telefone_fornecedor");
				Fornecedor f = new Fornecedor(cnpj, razao_social, inscricao_estadual, email_fornecedor, telefone_fornecedor);
				f.setCod_fornecedor(cod_fornecedor);
				listaFornecedor.add(f);
			}
			r.close();
			p.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listaFornecedor;
	}
	
	//Método que REMOVE fornecedor
	
	public void removeSupplier(Integer cod_fornecedor) {
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		try {
			PreparedStatement p = con.prepareStatement("delete from tb_fornecedor where cod_fornecedor = ?");
			p.setInt(1, cod_fornecedor);
			System.out.println(p);
			p.executeUpdate();
			System.out.println("Remoção fornecedor: executado");
			p.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//Método que ATUALIZA dados do fornecedor
	
	public void updateSupplier(Fornecedor updateSupplier) {
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		try {
			PreparedStatement p = con.prepareStatement("update tb_fornecedor set cnpj = ?, razao_social = ?, inscricao_estadual = ?, email_fornecedor = ?, telefone_fornecedor = ? where cod_fornecedor = ?");
			p.setString(1, updateSupplier.getCnpj()); 
			p.setString(2, updateSupplier.getRazao_social());
			p.setString(3, updateSupplier.getInscricao_estadual());
			p.setString(4, updateSupplier.getEmail_fornecedor());
			p.setString(5, updateSupplier.getTelefone_fornecedor());
			p.setInt(6, updateSupplier.getCod_fornecedor());
			System.out.println(p);
			p.executeUpdate();
			System.out.println("Atualização Fornecedor: executado");
			p.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	//Método de BUSCAR o fornecedor
	
	public Fornecedor buscarSupplier(Integer cod_fornecedor) {
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		Fornecedor f = null;
		try {
			PreparedStatement p = con.prepareStatement("select * from tb_fornecedor where cod_fornecedor = ?");
			p.setInt(1, cod_fornecedor);
			ResultSet r = p.executeQuery();			
			
			
			while (r.next()) {
				Integer cod_fornecedor2 = r.getInt("cod_fornecedor");
				String cnpj = r.getString("cnpj");
				String razao_social = r.getString("razao_social");
				String inscricao_estadual = r.getString("inscricao_estadual");
				String email_fornecedor = r.getString("email_fornecedor");
				String telefone_fornecedor = r.getString("telefone_fornecedor");
			
				f = new Fornecedor(cnpj, razao_social, inscricao_estadual, email_fornecedor, telefone_fornecedor); // Inverteu-se email no lugar de pais e pais no lugar de email. AGORA ESTÁ CERTO.
				f.setCod_fornecedor(cod_fornecedor);
			}
			r.close();
			p.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return f;
	}
	
}
