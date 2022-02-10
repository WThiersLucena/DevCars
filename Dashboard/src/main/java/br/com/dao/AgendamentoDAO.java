package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import br.com.conexao.Conexao;
import br.com.entidade.Agendamento;


public class AgendamentoDAO {
	
		public List<Agendamento> mostrarAgenda() {
			Conexao c = Conexao.getInstance();
			Connection con = c.getConnection();
			List<Agendamento> agenda = new ArrayList<Agendamento>();
			
			try {
				PreparedStatement p = con.prepareStatement("select * from tb_agendamento");
				ResultSet r = p.executeQuery();

				while (r.next()) {
					Integer cod_agendamento = r.getInt("cod_agendamento");
					Integer cod_veiculo = r.getInt("cod_veiculo");
					Integer cod_cliente = r.getInt("cod_cliente");
					Date data_reserva = r.getDate("data_reserva");
					
					Double taxa_agendamento = r.getDouble("taxa_agendamento");
					
					Agendamento a = new Agendamento(cod_agendamento, cod_veiculo, cod_cliente, data_reserva, taxa_agendamento);
					
					a.setCod_agendamento(cod_agendamento);
					agenda.add(a);
				}

			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return agenda;
		}	
	}

