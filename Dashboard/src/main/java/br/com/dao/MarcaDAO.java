package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.conexao.Conexao;
import br.com.entidade.Marca;

public class MarcaDAO {
	
	public MarcaDAO() {
		super();
	}
	
	public ArrayList<Marca> mostrarMarca() {
		
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		ArrayList<Marca> listaMarca = new ArrayList<Marca>();
		
		try {
			PreparedStatement p = con.prepareStatement("select * from tb_marca");
			ResultSet r = p.executeQuery();
			
			while (r.next()) {
				Integer cod_marca = r.getInt("cod_marca");
				String marca_veiculo = r.getString("marca_veiculo");
			
				Marca marca = new Marca(cod_marca, marca_veiculo);
				marca.setCod_marca(cod_marca);
				listaMarca.add(marca);			
			}


		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return listaMarca;
	}
}
	
