package br.com.entidade;

public class Veiculo {
	private Integer cod_veiculo;
	private String marca_veiculo;
	private String modelo_veiculo;
	private String nome_cor;
	private Integer ano_veiculo;
	private String motor_veiculo;
	private String potencia_cv;
	private Double preco_veiculo;
	private String tipo_combustivel;
	private String cambio;
	private String numero_chassi;
	private Boolean estoque;
	
	
	
	private Veiculo() {
		super();
	}



	public Veiculo(String marca_veiculo, String modelo_veiculo, String nome_cor, Integer ano_veiculo,
			String motor_veiculo, String potencia_cv, Double preco_veiculo, String tipo_combustivel, String cambio,
			String numero_chassi, Boolean estoque) {
		super();
		this.marca_veiculo = marca_veiculo;
		this.modelo_veiculo = modelo_veiculo;
		this.nome_cor = nome_cor;
		this.ano_veiculo = ano_veiculo;
		this.motor_veiculo = motor_veiculo;
		this.potencia_cv = potencia_cv;
		this.preco_veiculo = preco_veiculo;
		this.tipo_combustivel = tipo_combustivel;
		this.cambio = cambio;
		this.numero_chassi = numero_chassi;
		this.estoque = estoque;
	}
//
//
//
//	public Veiculo(Integer cod_veiculo, String marca_veiculo, String modelo_veiculo, String nome_cor,
//			Integer ano_veiculo, String motor_veiculo, String potencia_cv, Double preco_veiculo,
//			String tipo_combustivel, String cambio, String numero_chassi, Boolean estoque) {
//		super();
//		this.cod_veiculo = cod_veiculo;
//		this.marca_veiculo = marca_veiculo;
//		this.modelo_veiculo = modelo_veiculo;
//		this.nome_cor = nome_cor;
//		this.ano_veiculo = ano_veiculo;
//		this.motor_veiculo = motor_veiculo;
//		this.pontencia_cv = potencia_cv;
//		this.preco_veiculo = preco_veiculo;
//		this.tipo_combustivel = tipo_combustivel;
//		this.cambio = cambio;
//		this.numero_chassi = numero_chassi;
//		this.estoque = estoque;
//	}
//





	public Integer getCod_veiculo() {
		return cod_veiculo;
	}



	public void setCod_veiculo(Integer cod_veiculo) {
		this.cod_veiculo = cod_veiculo;
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



	public Integer getAno_veiculo() {
		return ano_veiculo;
	}



	public void setAno_veiculo(Integer ano_veiculo) {
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



	public Double getPreco_veiculo() {
		return preco_veiculo;
	}



	public void setPreco_veiculo(Double preco_veiculo) {
		this.preco_veiculo = preco_veiculo;
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



	public Boolean getEstoque() {
		return this.estoque;
	}



	@Override
	public String toString() {
		return "Veiculo [cod_veiculo=" + cod_veiculo + ", marca_veiculo=" + marca_veiculo + ", modelo_veiculo="
				+ modelo_veiculo + ", nome_cor=" + nome_cor + ", ano_veiculo=" + ano_veiculo + ", motor_veiculo="
				+ motor_veiculo + ", potencia_cv=" + potencia_cv + ", preco_veiculo=" + preco_veiculo
				+ ", tipo_combustivel=" + tipo_combustivel + ", cambio=" + cambio + ", numero_chassi=" + numero_chassi
				+ ", estoque=" + estoque + "]";
	}



	public void setEstoque(Boolean estoque) {
		this.estoque = estoque;
	}
	
	


}