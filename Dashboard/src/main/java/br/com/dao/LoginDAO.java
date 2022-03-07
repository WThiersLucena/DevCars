package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.conexao.Conexao;
import br.com.entidade.Login;

public class LoginDAO {

	public LoginDAO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void loginCadastro(Login usuario) {

		Conexao conexao = Conexao.getInstance();
		Connection connection = conexao.getConnection();

		try {
			PreparedStatement preStat = connection.prepareStatement("INSERT into login(usuario, email, senha) values(?, ?, ?)");
			preStat.setString(1, usuario.getUsuario());
			preStat.setString(2, usuario.getEmail());
			preStat.setString(3, usuario.getSenha());

			System.out.println(preStat);
			preStat.executeUpdate();

			System.out.println("Comando Executado");

			preStat.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Login> listaCadastro() {

		Conexao conexao = Conexao.getInstance();
		Connection connection = conexao.getConnection();

		ArrayList<Login> listaLogin = new ArrayList<Login>();

		try {

			PreparedStatement preStat = connection.prepareStatement("SELECT * FROM login");
			ResultSet resultSet = preStat.executeQuery();

			while (resultSet.next()) {
				Integer id = resultSet.getInt("id");
				String usuario = resultSet.getString("usuario");
				String email = resultSet.getString("email");
				String senha = resultSet.getString("senha");

				Login login = new Login(usuario, email, senha);
				login.setId(id);
				listaLogin.add(login);
				
				System.out.println(listaLogin);
			}
			resultSet.close();
			preStat.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listaLogin;
	}

	public void updateLogin(Login atualizarLogin) {

		Conexao conexao = Conexao.getInstance();
		Connection connection = conexao.getConnection();

		try {
			PreparedStatement preStat = connection.prepareStatement("UPDATE login set usuario = ?, email = ?, senha = ? WHERE id = ?");

			preStat.setString(1, atualizarLogin.getUsuario());
			preStat.setString(2, atualizarLogin.getEmail());
			preStat.setString(3, atualizarLogin.getSenha());
			preStat.setInt(4, atualizarLogin.getId());
				
			System.out.println(preStat);
			preStat.executeUpdate();
			System.out.println("Comando Executado");
			preStat.close();
			

		} catch(SQLException e){
			e.printStackTrace();
		}
	}

	public Login buscarLogin(int id) {

		Conexao conexao = Conexao.getInstance();
		Connection connection = conexao.getConnection();
		Login login = null;

		try {
			PreparedStatement preStat = connection.prepareStatement("SELECT * FROM login WHERE id = ?");
			preStat.setInt(1, id);
			ResultSet resultSet = preStat.executeQuery();

			while (resultSet.next()) {
				Integer id1 = resultSet.getInt("id");
				String usuario = resultSet.getString("usuario");
				String email = resultSet.getString("email");
				String senha = resultSet.getString("senha");

				login = new Login(usuario, email, senha);
				login.setId(id1);
				
			}
			resultSet.close();
			preStat.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return login;
	}
	
	public void removerLogin(Integer id) {
		
		Conexao conexao = Conexao.getInstance();
		Connection connection = conexao.getConnection();
		
		try {
			PreparedStatement preStat = connection.prepareStatement("DELETE FROM login WHERE id = ?");
			preStat.setInt(1, id);

			System.out.println(preStat);
			preStat.executeUpdate();
			System.out.println("Comando Executado");
			preStat.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Login conferencia(String email, String senha) {
		
		Conexao conexao = Conexao.getInstance();
		Connection connection = conexao.getConnection();
		
		Login login = null;
		try {
			PreparedStatement preStat = connection.prepareStatement("select * from login where email = ? and senha = ?");
			preStat.setString(1, email);
			preStat.setString(2, senha);
			ResultSet resultSet = preStat.executeQuery();
			
			while(resultSet.next()) {
				String usuario1 = resultSet.getString("usuario");
				String email1 = resultSet.getString("email");
				String senha1 = resultSet.getString("senha");
				Integer id1 = resultSet.getInt("id");
				
				if (email.equals(email1) && senha.equals(senha)) {
					login = new Login(usuario1, email1, senha1);
					login.setId(id1);
					return login;
				} else{
					System.out.println("email ou senha invalidos!");}
				}
			}catch (SQLException e) {

				e.printStackTrace();
			}
		return login;
		
		}
}