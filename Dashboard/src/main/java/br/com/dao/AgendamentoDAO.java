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
			PreparedStatement p = con.prepareStatement("select ta.cod_agendamento, tc.nome_cliente, tc.razao_social, tc.numero_documento, tc.email_cliente, tc.telefone_cliente, \r\n"
					+ "tm.marca_veiculo, tv.modelo_veiculo, tc2.nome_cor, tv.ano_veiculo, tm2.motor_veiculo, tm2.potencia_cv, tc3.tipo_combustivel, tc4.cambio, \r\n"
					+ "tv.numero_chassi, tv.preco_veiculo, ta.data_reserva, ta.taxa_agendamento, tfp.descricao_forma_pagamento, tb.numero_cod_barra as 'pagamento'\r\n"
					+ "	from tb_cliente tc\r\n"
					+ "	inner join tb_agendamento ta on (tc.cod_cliente = ta.cod_cliente)\r\n"
					+ "	inner join tb_veiculo tv on (tv.cod_veiculo = ta.cod_veiculo)\r\n"
					+ "	inner join tb_marca tm on (tm.cod_marca = tv.cod_marca)\r\n"
					+ "	inner join tb_cor tc2 on (tc2.cod_cor = tv.cod_cor)\r\n"
					+ "	inner join tb_motor tm2 on (tm2.cod_motor = tv.cod_motor)\r\n"
					+ "	inner join tb_combustivel tc3 on (tv.cod_combustivel = tc3.cod_combustivel)\r\n"
					+ "	inner join tb_cambio tc4 on (tv.cod_cambio = tc4.cod_cambio)\r\n"
					+ "	inner join tb_forma_pagamento tfp on (tfp.cod_forma_pagamento = ta.cod_forma_pagamento)\r\n"
					+ " 	inner join tb_boleto tb on (tb.cod_boleto = ta.cod_boleto)\r\n"
					+ "	where tb.numero_cod_barra is not null\r\n"
					+ "	\r\n"
					+ "	union\r\n"
					+ "\r\n"
					+ "select ta.cod_agendamento, tc.nome_cliente, tc.razao_social, tc.numero_documento, tc.email_cliente, tc.telefone_cliente, \r\n"
					+ "tm.marca_veiculo, tv.modelo_veiculo, tc2.nome_cor, tv.ano_veiculo, tm2.motor_veiculo, tm2.potencia_cv, tc3.tipo_combustivel, tc4.cambio, \r\n"
					+ "tv.numero_chassi, tv.preco_veiculo, ta.data_reserva, ta.taxa_agendamento, tfp.descricao_forma_pagamento, tc5.numero_cartao\r\n"
					+ "	from tb_cliente tc\r\n"
					+ "	inner join tb_agendamento ta on (tc.cod_cliente = ta.cod_cliente)\r\n"
					+ "	inner join tb_veiculo tv on (tv.cod_veiculo = ta.cod_veiculo)\r\n"
					+ "	inner join tb_marca tm on (tm.cod_marca = tv.cod_marca)\r\n"
					+ "	inner join tb_cor tc2 on (tc2.cod_cor = tv.cod_cor)\r\n"
					+ "	inner join tb_motor tm2 on (tm2.cod_motor = tv.cod_motor)\r\n"
					+ "	inner join tb_combustivel tc3 on (tv.cod_combustivel = tc3.cod_combustivel)\r\n"
					+ "	inner join tb_cambio tc4 on (tv.cod_cambio = tc4.cod_cambio)\r\n"
					+ "	inner join tb_forma_pagamento tfp on (tfp.cod_forma_pagamento = ta.cod_forma_pagamento)\r\n"
					+ " 	inner join tb_cartao tc5 on (tc5.cod_cartao = ta.cod_cartao)\r\n"
					+ " 	where tc5.numero_cartao is not null\r\n"
					+ " \r\n"
					+ " 	\r\n"
					+ " 		union\r\n"
					+ "\r\n"
					+ "select ta.cod_agendamento, tc.nome_cliente, tc.razao_social, tc.numero_documento, tc.email_cliente, tc.telefone_cliente, \r\n"
					+ "tm.marca_veiculo, tv.modelo_veiculo, tc2.nome_cor, tv.ano_veiculo, tm2.motor_veiculo, tm2.potencia_cv, tc3.tipo_combustivel, tc4.cambio, \r\n"
					+ "tv.numero_chassi, tv.preco_veiculo, ta.data_reserva, ta.taxa_agendamento, tfp.descricao_forma_pagamento, tp.id_transacao\r\n"
					+ "	from tb_cliente tc\r\n"
					+ "	inner join tb_agendamento ta on (tc.cod_cliente = ta.cod_cliente)\r\n"
					+ "	inner join tb_veiculo tv on (tv.cod_veiculo = ta.cod_veiculo)\r\n"
					+ "	inner join tb_marca tm on (tm.cod_marca = tv.cod_marca)\r\n"
					+ "	inner join tb_cor tc2 on (tc2.cod_cor = tv.cod_cor)\r\n"
					+ "	inner join tb_motor tm2 on (tm2.cod_motor = tv.cod_motor)\r\n"
					+ "	inner join tb_combustivel tc3 on (tv.cod_combustivel = tc3.cod_combustivel)\r\n"
					+ "	inner join tb_cambio tc4 on (tv.cod_cambio = tc4.cod_cambio)\r\n"
					+ "	inner join tb_forma_pagamento tfp on (tfp.cod_forma_pagamento = ta.cod_forma_pagamento)\r\n"
					+ " 	inner join tb_pix tp on (tp.cod_pix = ta.cod_pix)\r\n"
					+ " 	where tp.cod_pix is not null\r\n"
					+ " \r\n"
					+ " 	\r\n"
					+ " 	\r\n"
					+ " 	\r\n"
					+ " 	order by cod_agendamento desc;");
			ResultSet r = p.executeQuery();
			

			while (r.next()) {
				Integer cod_agendamento = r.getInt("cod_agendamento");
				String nome_cliente = r.getString("nome_cliente");
				String razao_social = r.getString("razao_social");
				String numero_documento = r.getString("numero_documento");
				String email_cliente = r.getString("email_cliente");
				String telefone_cliente = r.getString("telefone_cliente");
				String marca_veiculo = r.getString("marca_veiculo");
				String modelo_veiculo = r.getString("modelo_veiculo");
				String nome_cor = r.getString("nome_cor");
				String ano_veiculo = r.getString("ano_veiculo");
				String motor_veiculo = r.getString("motor_veiculo");
				String potencia_cv = r.getString("potencia_cv");
				String tipo_combustivel = r.getString("tipo_combustivel");
				String cambio = r.getString("cambio");
				String numero_chassi = r.getString("numero_chassi");				
				Date data_reserva = r.getDate("data_reserva");
				Double taxa_agendamento = r.getDouble("taxa_agendamento");
				Double preco_veiculo = r.getDouble("preco_Veiculo");
				String descricao_forma_pagamento = r.getString("descricao_forma_pagamento");
//				String numero_cod_barra = r.getString("numero_cod_barra"); 
				String pagamento = r.getString("pagamento");
				
				
				Agendamento a = new Agendamento(cod_agendamento, nome_cliente, razao_social, numero_documento, email_cliente, telefone_cliente, marca_veiculo, modelo_veiculo, nome_cor, ano_veiculo, motor_veiculo, potencia_cv, tipo_combustivel, cambio, numero_chassi, data_reserva, taxa_agendamento, preco_veiculo, descricao_forma_pagamento, pagamento);
				
				a.setCod_agendamento(cod_agendamento);
				agenda.add(a);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return agenda;
	}
	
	
}
