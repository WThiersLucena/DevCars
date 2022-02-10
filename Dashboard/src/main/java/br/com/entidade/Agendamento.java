package br.com.entidade;

import java.util.Date;

public class Agendamento {
	private Integer cod_agendamento;
	private Integer cod_veiculo;
	private Integer cod_cliente;
	private Date data_reserva;
	private Double taxa_agendamento;
	
	
	public Agendamento() {
		
	}
	
	
	
	public Agendamento(Integer cod_agendamento, Integer cod_veiculo, Integer cod_cliente, Date data_reserva,
			Double taxa_agendamento) {
		super();
		this.cod_agendamento = cod_agendamento;
		this.cod_veiculo = cod_veiculo;
		this.cod_cliente = cod_cliente;
		this.data_reserva = data_reserva;
		this.taxa_agendamento = taxa_agendamento;
	}




	public Agendamento(Integer cod_veiculo, Integer cod_cliente, Date data_reserva,
			Double taxa_agendamento) {
		this.cod_veiculo = cod_veiculo;
		this.cod_cliente = cod_cliente;
		this.data_reserva = data_reserva;
		this.taxa_agendamento = taxa_agendamento;
	}


	public Integer getCod_agendamento() {
		return cod_agendamento;
	}
	

	public void setCod_agendamento(Integer cod_agendamento) {
		this.cod_agendamento = cod_agendamento;
	}


	public Integer getCod_veiculo() {
		return cod_veiculo;
	}


	public void setCod_veiculo(Integer cod_veiculo) {
		this.cod_veiculo = cod_veiculo;
	}


	public Integer getCod_cliente() {
		return cod_cliente;
	}



	public void setCod_cliente(Integer cod_cliente) {
		this.cod_cliente = cod_cliente;
	}
	

	public Date getData_reserva() {
		return data_reserva;
	}


	public void setData_reserva(Date data_reserva) {
		this.data_reserva = data_reserva;
	}


	public Double getTaxa_agendamento() {
		return taxa_agendamento;
	}


	public void setTaxa_agendamento(Double taxa_agendamento) {
		this.taxa_agendamento = taxa_agendamento;
	}


	@Override
	public String toString() {
		return "\n\nAgendamento: [cod_agendamento: " + cod_agendamento + ", \nveiculo: " + cod_veiculo + ", \ncliente: "
				+ cod_cliente + ", \ndata_reserva: " + data_reserva + ", \ntaxa_agendamento: " + taxa_agendamento + "]";
	}
}