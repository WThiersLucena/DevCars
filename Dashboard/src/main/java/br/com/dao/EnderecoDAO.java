package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.conexao.Conexao;
import br.com.entidade.Endereco;

public class EnderecoDAO {
	
	public EnderecoDAO() {
		super();
	}

////////MOSTRANDO ENDEREÇO CLIENTE  /////////////////
	
public ArrayList<Endereco> mostrarEndereco() {

Conexao c = Conexao.getInstance();
Connection con = c.getConnection();

ArrayList<Endereco> lista = new ArrayList<Endereco>();

try {
	PreparedStatement p = con.prepareStatement("select tb_cliente.cod_cliente,tb_endereco.cep_endereco,tb_endereco.rua_endereco ,tb_endereco.complemento ,tb_endereco.numero_endereco ,\r\n"
			+ "tb_endereco.bairro,tb_endereco.cidade ,tb_endereco.uf \r\n"
			+ "from tb_endereco_cliente \r\n"
			+ "inner join tb_endereco on tb_endereco.cod_endereco = tb_endereco_cliente.cod_endereco \r\n"
			+ "inner join tb_cliente on tb_cliente.cod_cliente = tb_endereco_cliente.cod_cliente\r\n"
			+ "order by cod_cliente ");
	ResultSet r = p.executeQuery();
	
	while (r.next()) {
		String cod_cliente = r.getString("cod_cliente"); 
					
		String cep_endereco = r.getString("cep_endereco"); 

		String rua_endereco = r.getString("rua_endereco"); 
		
		String complemento = r.getString("complemento"); 
		
		String numero_endereco = r.getString("numero_endereco"); 
		
		String bairro = r.getString("bairro"); 
		
		String cidade = r.getString("cidade"); 
		
		String uf = r.getString("uf"); 
			
	
		Endereco c2 = new Endereco(cod_cliente,cep_endereco,rua_endereco,complemento,numero_endereco,bairro,cidade,uf);
		c2.setCod_cliente(cod_cliente);
		lista.add(c2);
		
		
	}


} catch (SQLException e) {
	e.printStackTrace();
}

return lista;
}

public Object mostrarEndereco1() {
	// TODO Auto-generated method stub
	return null;
}

//MOSTRANDO ENDEREÇO CLIENTE FIM
	
	
	
}
