package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.conexao.Conexao;
import br.com.entidade.Cor;

public class CorDAO {
	
	
	public CorDAO() {
		super();
	}
	
	public ArrayList<Cor> mostrarCor() {
		
		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();
		
		ArrayList<Cor> listaCor = new ArrayList<Cor>();
		
		try {
			PreparedStatement p = con.prepareStatement("select * from tb_cor");
			ResultSet r = p.executeQuery();
			
			while (r.next()) {
				Integer cod_cor = r.getInt("cod_cor");
				String nome_cor = r.getString("nome_cor");
			
				Cor cor = new Cor(cod_cor, nome_cor);
				cor.setCod_cor(cod_cor);
				listaCor.add(cor);	
				
			}


		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return listaCor;
	}
}
