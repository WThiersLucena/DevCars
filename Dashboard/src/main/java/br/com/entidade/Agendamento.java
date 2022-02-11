package br.com.entidade;

import java.util.Date;

public class Agendamento {
//	private Integer cod_agendamento;
//	private Integer cod_veiculo;
//	private Integer cod_cliente;
//	private Date data_reserva;
//	private Double taxa_agendamento;
//	
	
	
	private Integer cod_agendamento;
	private String nome_cliente;
	private String razao_social;
	private String numero_documento;
	private String email_cliente;
	private String telefone_cliente;
	private String marca_veiculo;
	private String modelo_veiculo;
	private String nome_cor;
	private String ano_veiculo;
	private String motor_veiculo;
	private String potencia_cv;
	private String tipo_combustivel;
	private String cambio;
	private String numero_chassi;				
//	Integer cod_veiculo = r.getInt("cod_veiculo");
//	Integer cod_cliente = r.getInt("cod_cliente");
	private Date data_reserva;;
	private Double taxa_agendamento;
	
	public Agendamento() {
		
	}

	
	public Agendamento(Integer cod_agendamento, String nome_cliente, String razao_social, String numero_documento,
			String email_cliente, String telefone_cliente, String marca_veiculo, String modelo_veiculo, String nome_cor,
			String ano_veiculo, String motor_veiculo, String potencia_cv, String tipo_combustivel, String cambio,
			String numero_chassi, Date data_reserva, Double taxa_agendamento) {
		super();
		this.cod_agendamento = cod_agendamento;
		this.nome_cliente = nome_cliente;
		this.razao_social = razao_social;
		this.numero_documento = numero_documento;
		this.email_cliente = email_cliente;
		this.telefone_cliente = telefone_cliente;
		this.marca_veiculo = marca_veiculo;
		this.modelo_veiculo = modelo_veiculo;
		this.nome_cor = nome_cor;
		this.ano_veiculo = ano_veiculo;
		this.motor_veiculo = motor_veiculo;
		this.potencia_cv = potencia_cv;
		this.tipo_combustivel = tipo_combustivel;
		this.cambio = cambio;
		this.numero_chassi = numero_chassi;
		this.data_reserva = data_reserva;
		this.taxa_agendamento = taxa_agendamento;
	}


	public Integer getCod_agendamento() {
		return cod_agendamento;
	}


	public void setCod_agendamento(Integer cod_agendamento) {
		this.cod_agendamento = cod_agendamento;
	}


	public String getNome_cliente() {
		return nome_cliente;
	}


	public void setNome_cliente(String nome_cliente) {
		this.nome_cliente = nome_cliente;
	}


	public String getRazao_social() {
		return razao_social;
	}


	public void setRazao_social(String razao_social) {
		this.razao_social = razao_social;
	}


	public String getNumero_documento() {
		return numero_documento;
	}


	public void setNumero_documento(String numero_documento) {
		this.numero_documento = numero_documento;
	}


	public String getEmail_cliente() {
		return email_cliente;
	}


	public void setEmail_cliente(String email_cliente) {
		this.email_cliente = email_cliente;
	}


	public String getTelefone_cliente() {
		return telefone_cliente;
	}


	public void setTelefone_cliente(String telefone_cliente) {
		this.telefone_cliente = telefone_cliente;
	}


	public String getMarca_veiculo() {
		return marca_veiculo;
	}


	public void setMarca_veiculo(String marca_veiculo) {
		this.marca_veiculo = marca_veiculo;
	}


	public String getModelo_veiculo() {
		return modelo_veiculo;
	}


	public void setModelo_veiculo(String modelo_veiculo) {
		this.modelo_veiculo = modelo_veiculo;
	}


	public String getNome_cor() {
		return nome_cor;
	}


	public void setNome_cor(String nome_cor) {
		this.nome_cor = nome_cor;
	}


	public String getAno_veiculo() {
		return ano_veiculo;
	}


	public void setAno_veiculo(String ano_veiculo) {
		this.ano_veiculo = ano_veiculo;
	}


	public String getMotor_veiculo() {
		return motor_veiculo;
	}


	public void setMotor_veiculo(String motor_veiculo) {
		this.motor_veiculo = motor_veiculo;
	}


	public String getPotencia_cv() {
		return potencia_cv;
	}


	public void setPotencia_cv(String potencia_cv) {
		this.potencia_cv = potencia_cv;
	}


	public String getTipo_combustivel() {
		return tipo_combustivel;
	}


	public void setTipo_combustivel(String tipo_combustivel) {
		this.tipo_combustivel = tipo_combustivel;
	}


	public String getCambio() {
		return cambio;
	}


	public void setCambio(String cambio) {
		this.cambio = cambio;
	}


	public String getNumero_chassi() {
		return numero_chassi;
	}


	public void setNumero_chassi(String numero_chassi) {
		this.numero_chassi = numero_chassi;
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
		return "Agendamento [cod_agendamento=" + cod_agendamento + ", nome_cliente=" + nome_cliente + ", razao_social="
				+ razao_social + ", numero_documento=" + numero_documento + ", email_cliente=" + email_cliente
				+ ", telefone_cliente=" + telefone_cliente + ", marca_veiculo=" + marca_veiculo + ", modelo_veiculo="
				+ modelo_veiculo + ", nome_cor=" + nome_cor + ", ano_veiculo=" + ano_veiculo + ", motor_veiculo="
				+ motor_veiculo + ", potencia_cv=" + potencia_cv + ", tipo_combustivel=" + tipo_combustivel
				+ ", cambio=" + cambio + ", numero_chassi=" + numero_chassi + ", data_reserva=" + data_reserva
				+ ", taxa_agendamento=" + taxa_agendamento + "]";
	}
	
	
}
