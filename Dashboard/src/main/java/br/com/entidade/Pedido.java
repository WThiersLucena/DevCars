package br.com.entidade;

import java.util.Date;

public class Pedido {

	private Integer	cod_pedido;
	private Double valor_total_pedido;
	private Date data_pedido;
	private String nome_cliente;
	private String numero_documento;
	private String telefone_cliente;
	private String email_cliente;
	private String razao_social;
	private String cep_endereco;
	private String rua_endereco;
	private Integer numero_endereco;
	private String bairro;
	private String cidade;
	private String uf;
	private String	descricao_forma_pagamento;
	private Double valor_frete;
	private String	unidade_federativa;
	private String	status;
	private String	marca_veiculo;
	private String	modelo_veiculo;
	private Integer ano_veiculo;
	private String numero_chassi;
	private Double preco_veiculo;
	private String nome_cor;
	private String motor_veiculo;
	private String potencia_cv;
	private String tipo_combustivel;
	private String cambio;
	
	public Pedido(Integer cod_pedido, Double valor_total_pedido, Date data_pedido, String nome_cliente,
			String numero_documento, String telefone_cliente, String email_cliente, String razao_social,
			String cep_endereco, String rua_endereco, Integer numero_endereco, String bairro, String cidade, String uf,
			String descricao_forma_pagamento, Double valor_frete, String unidade_federativa, String status,
			String marca_veiculo, String modelo_veiculo, Integer ano_veiculo, String numero_chassi,
			Double preco_veiculo, String nome_cor, String motor_veiculo, String potencia_cv, String tipo_combustivel,
			String cambio) {
		super();
		this.cod_pedido = cod_pedido;
		this.valor_total_pedido = valor_total_pedido;
		this.data_pedido = data_pedido;
		this.nome_cliente = nome_cliente;
		this.numero_documento = numero_documento;
		this.telefone_cliente = telefone_cliente;
		this.email_cliente = email_cliente;
		this.razao_social = razao_social;
		this.cep_endereco = cep_endereco;
		this.rua_endereco = rua_endereco;
		this.numero_endereco = numero_endereco;
		this.bairro = bairro;
		this.cidade = cidade;
		this.uf = uf;
		this.descricao_forma_pagamento = descricao_forma_pagamento;
		this.valor_frete = valor_frete;
		this.unidade_federativa = unidade_federativa;
		this.status = status;
		this.marca_veiculo = marca_veiculo;
		this.modelo_veiculo = modelo_veiculo;
		this.ano_veiculo = ano_veiculo;
		this.numero_chassi = numero_chassi;
		this.preco_veiculo = preco_veiculo;
		this.nome_cor = nome_cor;
		this.motor_veiculo = motor_veiculo;
		this.potencia_cv = potencia_cv;
		this.tipo_combustivel = tipo_combustivel;
		this.cambio = cambio;
	}
	public Integer getCod_pedido() {
		return cod_pedido;
	}
	public void setCod_pedido(Integer cod_pedido) {
		this.cod_pedido = cod_pedido;
	}
	public Double getValor_total_pedido() {
		return valor_total_pedido;
	}
	public void setValor_total_pedido(Double valor_total_pedido) {
		this.valor_total_pedido = valor_total_pedido;
	}
	public Date getData_pedido() {
		return data_pedido;
	}
	public void setData_pedido(Date data_pedido) {
		this.data_pedido = data_pedido;
	}
	public String getNome_cliente() {
		return nome_cliente;
	}
	public void setNome_cliente(String nome_cliente) {
		this.nome_cliente = nome_cliente;
	}
	public String getNumero_documento() {
		return numero_documento;
	}
	public void setNumero_documento(String numero_documento) {
		this.numero_documento = numero_documento;
	}
	public String getTelefone_cliente() {
		return telefone_cliente;
	}
	public void setTelefone_cliente(String telefone_cliente) {
		this.telefone_cliente = telefone_cliente;
	}
	public String getEmail_cliente() {
		return email_cliente;
	}
	public void setEmail_cliente(String email_cliente) {
		this.email_cliente = email_cliente;
	}
	public String getRazao_social() {
		return razao_social;
	}
	public void setRazao_social(String razao_social) {
		this.razao_social = razao_social;
	}
	public String getCep_endereco() {
		return cep_endereco;
	}
	public void setCep_endereco(String cep_endereco) {
		this.cep_endereco = cep_endereco;
	}
	public String getRua_endereco() {
		return rua_endereco;
	}
	public void setRua_endereco(String rua_endereco) {
		this.rua_endereco = rua_endereco;
	}
	public Integer getNumero_endereco() {
		return numero_endereco;
	}
	public void setNumero_endereco(Integer numero_endereco) {
		this.numero_endereco = numero_endereco;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getUf() {
		return uf;
	}
	public void setUf(String uf) {
		this.uf = uf;
	}
	public String getDescricao_forma_pagamento() {
		return descricao_forma_pagamento;
	}
	public void setDescricao_forma_pagamento(String descricao_forma_pagamento) {
		this.descricao_forma_pagamento = descricao_forma_pagamento;
	}
	public Double getValor_frete() {
		return valor_frete;
	}
	public void setValor_frete(Double valor_frete) {
		this.valor_frete = valor_frete;
	}
	public String getUnidade_federativa() {
		return unidade_federativa;
	}
	public void setUnidade_federativa(String unidade_federativa) {
		this.unidade_federativa = unidade_federativa;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
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
	public Integer getAno_veiculo() {
		return ano_veiculo;
	}
	public void setAno_veiculo(Integer ano_veiculo) {
		this.ano_veiculo = ano_veiculo;
	}
	public String getNumero_chassi() {
		return numero_chassi;
	}
	public void setNumero_chassi(String numero_chassi) {
		this.numero_chassi = numero_chassi;
	}
	public Double getPreco_veiculo() {
		return preco_veiculo;
	}
	public void setPreco_veiculo(Double preco_veiculo) {
		this.preco_veiculo = preco_veiculo;
	}
	public String getNome_cor() {
		return nome_cor;
	}
	public void setNome_cor(String nome_cor) {
		this.nome_cor = nome_cor;
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
	@Override
	public String toString() {
		return "Pedido [cod_pedido=" + cod_pedido + ", valor_total_pedido=" + valor_total_pedido + ", data_pedido="
				+ data_pedido + ", nome_cliente=" + nome_cliente + ", numero_documento=" + numero_documento
				+ ", telefone_cliente=" + telefone_cliente + ", email_cliente=" + email_cliente + ", razao_social="
				+ razao_social + ", cep_endereco=" + cep_endereco + ", rua_endereco=" + rua_endereco
				+ ", numero_endereco=" + numero_endereco + ", bairro=" + bairro + ", cidade=" + cidade + ", uf=" + uf
				+ ", descricao_forma_pagamento=" + descricao_forma_pagamento + ", valor_frete=" + valor_frete
				+ ", unidade_federativa=" + unidade_federativa + ", status=" + status + ", marca_veiculo="
				+ marca_veiculo + ", modelo_veiculo=" + modelo_veiculo + ", ano_veiculo=" + ano_veiculo
				+ ", numero_chassi=" + numero_chassi + ", preco_veiculo=" + preco_veiculo + ", nome_cor=" + nome_cor
				+ ", motor_veiculo=" + motor_veiculo + ", potencia_cv=" + potencia_cv + ", tipo_combustivel="
				+ tipo_combustivel + ", cambio=" + cambio + "]";
	}
	
	

}
