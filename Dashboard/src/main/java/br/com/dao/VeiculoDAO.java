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
			PreparedStatement p = con.prepareStatement("insert into tb_veiculo (cod_marca, modelo_veiculo, numero_chassi, ano_veiculo, "
														+ "preco_veiculo, cod_cor, cod_motor, cod_combustivel, cod_cambio, cod_fornecedor,"
														+ " estoque, destaque) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
		
			p.setInt(1, veiculo.getCod_marca());
			p.setString(2, veiculo.getModelo_veiculo());
			p.setString(3, veiculo.getNumero_chassi());
			p.setInt(4, veiculo.getAno_veiculo());
			p.setDouble(5, veiculo.getPreco_veiculo());
			p.setInt(6, veiculo.getCod_cor());
			p.setInt(7, veiculo.getCod_motor());
			p.setInt(8, veiculo.getCod_combustivel());
			p.setInt(9, veiculo.getCod_cambio());
			p.setInt(10, veiculo.getCod_fornecedor());
			p.setBoolean(11, veiculo.getEstoque());
			p.setBoolean(12, veiculo.getDestaque());

			
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
			PreparedStatement p = con.prepareStatement("select cod_veiculo, marca_veiculo, modelo_veiculo, numero_chassi, ano_veiculo, preco_veiculo, nome_cor, motor_veiculo, potencia_cv, tipo_combustivel, cambio, estoque, destaque\r\n"
					+ "					 from tb_veiculo tv\r\n"
					+ "					 inner join tb_marca tm on (tv.cod_marca = tm.cod_marca)\r\n"
					+ "					 inner join tb_cor tc on (tv.cod_cor = tc.cod_cor)\r\n"
					+ "					 inner join tb_motor tm2 on (tv.cod_motor = tm2.cod_motor)\r\n"
					+ "					 inner join tb_combustivel tc2 on (tv.cod_combustivel = tc2.cod_combustivel)\r\n"
					+ "					 inner join tb_cambio tc3 on (tv.cod_cambio = tc3.cod_cambio)\r\n"
					+ "					 order by cod_veiculo;\r\n"
					+ "");
			ResultSet r = p.executeQuery();
			
			while (r.next()) {
				Integer cod_veiculo = r.getInt("cod_veiculo");
				String marca_veiculo = r.getString("marca_veiculo");
				String modelo_veiculo = r.getString("modelo_veiculo");
				String numero_chassi = r.getString("numero_chassi");
				Integer ano_veiculo = r.getInt("ano_veiculo");
				Double preco_veiculo = r.getDouble("preco_veiculo");
				String nome_cor = r.getString("nome_cor");
				String motor_veiculo = r.getString("motor_veiculo");
				String potencia_cv = r.getString("potencia_cv");
				String tipo_combustivel = r.getString("tipo_combustivel");
				String cambio = r.getString("cambio");
				Boolean estoque = r.getBoolean("estoque");
				Boolean destaque = r.getBoolean("destaque");
				
				
				
				Veiculo v = new Veiculo(marca_veiculo, modelo_veiculo, nome_cor, ano_veiculo, motor_veiculo, potencia_cv, preco_veiculo, tipo_combustivel, cambio, numero_chassi, estoque, destaque);
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
			System.out.println("Ve�culo Exclu�do");
			
			p.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void atualizarVeiculo(Veiculo veiculo) {
		
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		
		System.out.println(veiculo);
		
		try {
			PreparedStatement p = con.prepareStatement("update tb_veiculo set modelo_veiculo = ?, cod_marca = ?, numero_chassi = ?, ano_veiculo = ?, "
													+ "preco_veiculo = ?, cod_cor = ?, cod_motor = ?, cod_combustivel = ?, cod_cambio = ?, "
													+ "cod_fornecedor = ?, estoque = ?, destaque = ? where cod_veiculo = ?");
			
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
			p.setBoolean(11, veiculo.getEstoque());
			p.setBoolean(12, veiculo.getDestaque());
			p.setInt(13, veiculo.getCod_veiculo());
			
			System.out.println(p);
			
			p.executeUpdate();
			System.out.println("Ve�culo Atualizado");
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
			PreparedStatement p = con.prepareStatement("select cod_veiculo, marca_veiculo, modelo_veiculo, numero_chassi, ano_veiculo, preco_veiculo, nome_cor, motor_veiculo, potencia_cv, tipo_combustivel, cambio, estoque, destaque\r\n"
					+ "	from tb_veiculo tv\r\n"
					+ "	inner join tb_marca tm on (tv.cod_marca = tm.cod_marca)\r\n"
					+ "	inner join tb_cor tc on (tv.cod_cor = tc.cod_cor)\r\n"
					+ "	inner join tb_motor tm2 on (tv.cod_motor = tm2.cod_motor)\r\n"
					+ "	inner join tb_combustivel tc2 on (tv.cod_combustivel = tc2.cod_combustivel)\r\n"
					+ "	inner join tb_cambio tc3 on (tv.cod_cambio = tc3.cod_cambio)\r\n"
					+ "	where cod_veiculo = ?\r\n"
					+ "	order by cod_veiculo;\r\n"
					+ "");
			p.setInt(1, cod_veiculo);
			ResultSet r = p.executeQuery();
			
			while (r.next()) {

				Integer cod_veiculo2 = r.getInt("cod_veiculo");
				String marca_veiculo = r.getString("marca_veiculo");
				String modelo_veiculo = r.getString("modelo_veiculo");
				String numero_chassi = r.getString("numero_chassi");
				Integer ano_veiculo = r.getInt("ano_veiculo");
				Double preco_veiculo = r.getDouble("preco_veiculo");
				String nome_cor = r.getString("nome_cor");
				String motor_veiculo = r.getString("motor_veiculo");
				String potencia_cv = r.getString("potencia_cv");
				String tipo_combustivel = r.getString("tipo_combustivel");
				String cambio = r.getString("cambio");
				Boolean estoque = r.getBoolean("estoque");
				Boolean destaque = r.getBoolean("destaque");
				
				
				v = new Veiculo(marca_veiculo, modelo_veiculo, nome_cor, ano_veiculo, motor_veiculo, potencia_cv, preco_veiculo, tipo_combustivel, cambio, numero_chassi, estoque, destaque);
				
				v.setCod_veiculo(cod_veiculo2);
				
			
			}
			
			r.close();
			p.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return v;
	}
	
	
	
	
	public Integer contarVeiculos() {
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		 try {
			 Integer cont = null;
			 PreparedStatement p = con.prepareStatement("select count(*) as NumeroDeVeiculos from tb_veiculo");
			 ResultSet r = p.executeQuery();
			 r.next();
			 
			 cont = r.getInt("NumeroDeVeiculos");
			 
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
