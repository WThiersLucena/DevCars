package br.com.entidade;

public class Veiculo {
	private Integer cod_veiculo;
	private String modelo_veiculo;
	private Integer cod_marca;
	private String numero_chassi;
	private Integer ano_veiculo;
	private Double preco_veiculo;
	private Integer cod_cor;
	private Integer cod_motor;
	private Integer cod_combustivel;
	private Integer cod_cambio;
	private Integer cod_fornecedor;
	private Boolean estoque;
	private Boolean destaque;
	


	public Veiculo(String modelo_veiculo, Integer cod_marca, String numero_chassi, Integer ano_veiculo,
			Double preco_veiculo, Integer cod_cor, Integer cod_motor, Integer cod_combustivel, Integer cod_cambio,
			Integer cod_fornecedor, Boolean estoque, Boolean destaque) {
		super();
		this.modelo_veiculo = modelo_veiculo;
		this.cod_marca = cod_marca;
		this.numero_chassi = numero_chassi;
		this.ano_veiculo = ano_veiculo;
		this.preco_veiculo = preco_veiculo;
		this.cod_cor = cod_cor;
		this.cod_motor = cod_motor;
		this.cod_combustivel = cod_combustivel;
		this.cod_cambio = cod_cambio;
		this.cod_fornecedor = cod_fornecedor;
		this.estoque = estoque;
		this.destaque = destaque;
	}


	public Integer getCod_veiculo() {
		return this.cod_veiculo;
	}

	public void setCod_veiculo(Integer cod_veiculo) {
		this.cod_veiculo = cod_veiculo;
	}

	public String getModelo_veiculo() {
		return modelo_veiculo;
	}

	public void setModelo_veiculo(String modelo_veiculo) {
		this.modelo_veiculo = modelo_veiculo;
	}

	public String getNumero_chassi() {
		return numero_chassi;
	}

	public void setNumero_chassi(String numero_chassi) {
		this.numero_chassi = numero_chassi;
	}

	public Integer getAno_veiculo() {
		return ano_veiculo;
	}

	public void setAno_veiculo(Integer ano_veiculo) {
		this.ano_veiculo = ano_veiculo;
	}

	public Double getPreco_veiculo() {
		return preco_veiculo;
	}

	public void setPreco_veiculo(Double preco_veiculo) {
		this.preco_veiculo = preco_veiculo;
	}

	public Integer getCod_marca() {
		return cod_marca;
	}

	public void setCod_marca(Integer cod_marca) {
		this.cod_marca = cod_marca;
	}

	public Integer getCod_cor() {
		return cod_cor;
	}

	public void setCod_cor(Integer cod_cor) {
		this.cod_cor = cod_cor;
	}

	public Integer getCod_motor() {
		return cod_motor;
	}

	public void setCod_motor(Integer cod_motor) {
		this.cod_motor = cod_motor;
	}

	public Integer getCod_combustivel() {
		return cod_combustivel;
	}

	public void setCod_combustivel(Integer cod_combustivel) {
		this.cod_combustivel = cod_combustivel;
	}

	public Integer getCod_cambio() {
		return cod_cambio;
	}

	public void setCod_cambio(Integer cod_cambio) {
		this.cod_cambio = cod_cambio;
	}

	public Integer getCod_fornecedor() {
		return cod_fornecedor;
	}

	public void setCod_fornecedor(Integer cod_fornecedor) {
		this.cod_fornecedor = cod_fornecedor;
	}

	public Boolean isEstoque() {
		return estoque;
	}

	public void setEstoque(Boolean estoque) {
		this.estoque = estoque;
	}

	public Boolean isDestaque() {
		return destaque;
	}

	public void setDestaque(Boolean destaque) {
		this.destaque = destaque;
	}

	@Override
	public String toString() {
		return "Veiculo [cod_veiculo = " + cod_veiculo + ",\n modelo_veiculo = " + modelo_veiculo + ",\n cod_marca = " + cod_marca
				+ ",\n numero_chassi = " + numero_chassi + ",\n ano_veiculo = " + ano_veiculo + ",\n preco_veiculo = "
				+ preco_veiculo + ",\n cod_cor = " + cod_cor + ",\n cod_motor = " + cod_motor + ",\n cod_combustivel = "
				+ cod_combustivel + ",\n cod_cambio = " + cod_cambio + ",\n cod_fornecedor = " + cod_fornecedor + ",\n estoque = "
				+ estoque + ",\n destaque = " + destaque + "] \n";
	}
	

}
