package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.conexao.Conexao;
import br.com.entidade.Motor;

public class MotorDAO {
	public MotorDAO() {
		super();
	}

	public ArrayList<Motor> mostrarMotor() {

		Conexao c = Conexao.getInstance();
		Connection con = c.getConnection();

		ArrayList<Motor> listaMotor = new ArrayList<Motor>();

		try {
			PreparedStatement p = con.prepareStatement("select * from tb_motor");
			ResultSet r = p.executeQuery();

			while (r.next()) {
				Integer cod_motor = r.getInt("cod_motor");
				String motor_veiculo = r.getString("motor_veiculo");
				String potencia_cv = r.getString("potencia_cv");

				Motor motor = new Motor(cod_motor, motor_veiculo, potencia_cv);
				motor.setCod_motor(cod_motor);
				listaMotor.add(motor);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listaMotor;
	}

}
