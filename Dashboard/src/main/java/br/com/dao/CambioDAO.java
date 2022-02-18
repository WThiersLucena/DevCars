package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.conexao.Conexao;
import br.com.entidade.Cambio;

public class CambioDAO {

	public CambioDAO() {
		super();
	}
	
	public ArrayList<Cambio> mostrarCambio() {
		
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		ArrayList<Cambio> listaCambio = new ArrayList<Cambio>();
		
		try {
			PreparedStatement p = con.prepareStatement("select * from tb_cambio");
			ResultSet r = p.executeQuery();
			
			while (r.next()) {
				Integer cod_cambio = r.getInt("cod_cambio");
				String cambio = r.getString("cambio");
			
				Cambio camb = new Cambio(cod_cambio, cambio);
				camb.setCod_cambio(cod_cambio);
				listaCambio.add(camb);	
				
			}


		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return listaCambio;
	}
}

