package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.conexao.Conexao;
import br.com.entidade.Combustivel;

public class CombustivelDAO {
	
	public CombustivelDAO() {
		super();
	}
	
public ArrayList<Combustivel> mostrarCombustivel() {
		
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		ArrayList<Combustivel> listaCombustivel = new ArrayList<Combustivel>();
		
		try {
			PreparedStatement p = con.prepareStatement("select * from tb_combustivel");
			ResultSet r = p.executeQuery();
			
			while (r.next()) {
				Integer cod_combustivel = r.getInt("cod_combustivel");
				String tipo_combustivel = r.getString("tipo_combustivel");
			
				Combustivel combustivel = new Combustivel(cod_combustivel, tipo_combustivel);
				combustivel.setCod_combustivel(cod_combustivel);
				listaCombustivel.add(combustivel);	
				
			}


		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return listaCombustivel;
	}
	
}
