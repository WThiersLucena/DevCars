package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.conexao.Conexao;
import br.com.entidade.Veiculo;

public class VeiculoDAO {
	
	public VeiculoDAO() {
		super();
	}
	
	public void adicionarVeiculo(Veiculo veiculo) {
		
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		try {
			PreparedStatement p = con.prepareStatement("insert into tb_veiculo (modelo_veiculo, cod_marca, numero_chassi, ano_veiculo, preco_veiculo, cod_cor, cod_motor, cod_combustivel, cod_cambio, cod_fornecedor, estoque, destaque) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			
			p.setString(1, veiculo.getModelo_veiculo());
			p.setInt(2, veiculo.getCod_marca());
			p.setString(3, veiculo.getNumero_chassi());
			p.setInt(4, veiculo.getAno_veiculo());
			p.setDouble(5, veiculo.getPreco_veiculo());
			p.setInt(6, veiculo.getCod_cor());
			p.setInt(7, veiculo.getCod_motor());
			p.setInt(8, veiculo.getCod_combustivel());
			p.setInt(9, veiculo.getCod_cambio());
			p.setInt(10, veiculo.getCod_fornecedor());
			p.setBoolean(11, veiculo.isEstoque());
			p.setBoolean(12, veiculo.isDestaque());
			
			System.out.println(p);
			p.executeUpdate();
			System.out.println("Veiculo Inserido");
			p.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Veiculo> mostrarVeiculo() {
		
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		ArrayList<Veiculo> lista = new ArrayList<Veiculo>();
		
		try {
			PreparedStatement p = con.prepareStatement("select * from tb_veiculo");
			ResultSet r = p.executeQuery();
			
			while (r.next()) {
				Integer cod_veiculo = r.getInt("cod_veiculo");
				String modelo_veiculo = r.getString("modelo_veiculo");
				Integer cod_marca = r.getInt("cod_marca");
				String numero_chassi = r.getString("numero_chassi");
				Integer ano_veiculo = r.getInt("ano_veiculo");
				Double preco_veiculo = r.getDouble("preco_veiculo");
				Integer cod_cor = r.getInt("cod_cor");
				Integer cod_motor = r.getInt("cod_motor");
				Integer cod_combustivel = r.getInt("cod_combustivel");
				Integer cod_cambio = r.getInt("cod_cambio");
				Integer cod_fornecedor = r.getInt("cod_fornecedor");
				Boolean estoque = r.getBoolean("estoque");
				Boolean destaque = r.getBoolean("destaque");
				
				Veiculo v = new Veiculo(modelo_veiculo, cod_marca, numero_chassi, ano_veiculo, preco_veiculo, cod_cor, cod_motor, cod_combustivel, cod_cambio, cod_fornecedor, estoque, destaque);
				
				v.setCod_veiculo(cod_veiculo);
				lista.add(v);
			}


		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return lista;
	}
	
	public void removerVeiculo(Integer cod_veiculo) {
		
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		try {
			PreparedStatement p = con.prepareStatement("delete from tb_veiculo where cod_veiculo = ?");
			p.setInt(1, cod_veiculo);
			
			System.out.println(p);
			p.executeUpdate();
			System.out.println("Veículo Excluído");
			
			p.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void atualizarVeiculo(Veiculo veiculo) {
		
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		try {
			PreparedStatement p = con.prepareStatement("update tb_veiculo set modelo_veiculo = ?, cod_marca = ?, numero_chassi = ?, ano_veiculo = ?, preco_veiculo = ?, cod_cor = ?, cod_motor = ?, cod_combustivel = ?, cod_cambio = ?, cod_fornecedor = ?, estoque = ?, destaque = ? where cod_veiculo = ?");
			
			p.setString(1, veiculo.getModelo_veiculo());
			p.setInt(2, veiculo.getCod_marca());
			p.setString(3, veiculo.getNumero_chassi());
			p.setInt(4, veiculo.getAno_veiculo());
			p.setDouble(5, veiculo.getPreco_veiculo());
			p.setInt(6, veiculo.getCod_cor());
			p.setInt(7, veiculo.getCod_motor());
			p.setInt(8, veiculo.getCod_combustivel());
			p.setInt(9, veiculo.getCod_cambio());
			p.setInt(10, veiculo.getCod_fornecedor());
			p.setBoolean(11, veiculo.isEstoque());
			p.setBoolean(12, veiculo.isDestaque());
			p.setInt(13, veiculo.getCod_veiculo());
			System.out.println("--------------------------------");
			System.out.println(p);
			
			p.executeUpdate();
			System.out.println("Veículo Atualizado");
			p.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Veiculo buscarVeiculo(Integer cod_veiculo) {
		
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		Veiculo v = null;
		
		try {
			PreparedStatement p = con.prepareStatement("select * from tb_veiculo where cod_veiculo = ?");
			p.setInt(1, cod_veiculo);
			ResultSet r = p.executeQuery();
			
			while (r.next()) {
				Integer cod_veiculo2 = r.getInt("cod_veiculo");
				String modelo_veiculo = r.getString("modelo_veiculo");
				Integer cod_marca = r.getInt("cod_marca");
				String numero_chassi = r.getString("numero_chassi");
				Integer ano_veiculo = r.getInt("ano_veiculo");
				Double preco_veiculo = r.getDouble("preco_veiculo");
				Integer cod_cor = r.getInt("cod_cor");
				Integer cod_motor = r.getInt("cod_motor");
				Integer cod_combustivel = r.getInt("cod_combustivel");
				Integer cod_cambio = r.getInt("cod_cambio");
				Integer cod_fornecedor = r.getInt("cod_fornecedor");
				Boolean estoque = r.getBoolean("estoque");
				Boolean destaque = r.getBoolean("destaque");
				
				v = new Veiculo(modelo_veiculo, cod_marca, numero_chassi, ano_veiculo, preco_veiculo, cod_cor, cod_motor, cod_combustivel, cod_cambio, cod_fornecedor, estoque, destaque);
				v.setCod_veiculo(cod_veiculo);
				
			
			}
			
			r.close();
			p.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return v;
	}
	
	
	
	
}
