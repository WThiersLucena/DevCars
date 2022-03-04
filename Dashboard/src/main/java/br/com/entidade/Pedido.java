package br.com.entidade;

import java.util.Date;

public class Pedido {

	private Integer cod_pedido;
	private String valor_total_pedido;
	private Date data_pedido;
	private Integer cod_veiculo;
	private String modelo_veiculo;
	private Integer ano_veiculo;
	private String numero_chassi;
	private String marca_veiculo;
	private String nome_cliente;
	private String numero_documento;
	private String telefone_cliente;
	private String razao_social;
	private String email_cliente;
	private String cep_endereco;
	private String rua_endereco;
	private String numero_endereco;
	private String bairro;
	private String cidade;
	private String uf;
	private String valor_frete;
	private String unidade_federativa;
	private String descricao_forma_pagamento;
	private String status;

	public Pedido(String string) {
		super();
		// TODO Auto-generated constructor stub
	}

	public Pedido(Integer cod_pedido, String valor_total_pedido, Date data_pedido, Integer cod_veiculo,
			String modelo_veiculo, Integer ano_veiculo, String numero_chassi, String marca_veiculo, String nome_cliente,
			String numero_documento, String telefone_cliente, String razao_social, String email_cliente,
			String cep_endereco, String rua_endereco, String numero_endereco, String bairro, String cidade, String uf,
			String valor_frete, String unidade_federativa, String descricao_forma_pagamento, String status) {
		super();
		this.cod_pedido = cod_pedido;
		this.valor_total_pedido = valor_total_pedido;
		this.data_pedido = data_pedido;
		this.cod_veiculo = cod_veiculo;
		this.modelo_veiculo = modelo_veiculo;
		this.ano_veiculo = ano_veiculo;
		this.numero_chassi = numero_chassi;
		this.marca_veiculo = marca_veiculo;
		this.nome_cliente = nome_cliente;
		this.numero_documento = numero_documento;
		this.telefone_cliente = telefone_cliente;
		this.razao_social = razao_social;
		this.email_cliente = email_cliente;
		this.cep_endereco = cep_endereco;
		this.rua_endereco = rua_endereco;
		this.numero_endereco = numero_endereco;
		this.bairro = bairro;
		this.cidade = cidade;
		this.uf = uf;
		this.valor_frete = valor_frete;
		this.unidade_federativa = unidade_federativa;
		this.descricao_forma_pagamento = descricao_forma_pagamento;
		this.status = status;
	}

	public Integer getCod_pedido() {
		return cod_pedido;
	}

	public void setCod_pedido(Integer cod_pedido) {
		this.cod_pedido = cod_pedido;
	}

	public String getValor_total_pedido() {
		return valor_total_pedido;
	}

	public void setValor_total_pedido(String valor_total_pedido) {
		this.valor_total_pedido = valor_total_pedido;
	}

	public Date getData_pedido() {
		return data_pedido;
	}

	public void setData_pedido(Date data_pedido) {
		this.data_pedido = data_pedido;
	}

	public Integer getCod_veiculo() {
		return cod_veiculo;
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

	public String getMarca_veiculo() {
		return marca_veiculo;
	}

	public void setMarca_veiculo(String marca_veiculo) {
		this.marca_veiculo = marca_veiculo;
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

	public String getRazao_social() {
		return razao_social;
	}

	public void setRazao_social(String razao_social) {
		this.razao_social = razao_social;
	}

	public String getEmail_cliente() {
		return email_cliente;
	}

	public void setEmail_cliente(String email_cliente) {
		this.email_cliente = email_cliente;
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

	public String getNumero_endereco() {
		return numero_endereco;
	}

	public void setNumero_endereco(String numero_endereco) {
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

	public String getValor_frete() {
		return valor_frete;
	}

	public void setValor_frete(String valor_frete) {
		this.valor_frete = valor_frete;
	}

	public String getUnidade_federativa() {
		return unidade_federativa;
	}

	public void setUnidade_federativa(String unidade_federativa) {
		this.unidade_federativa = unidade_federativa;
	}

	public String getDescricao_forma_pagamento() {
		return descricao_forma_pagamento;
	}

	public void setDescricao_forma_pagamento(String descricao_forma_pagamento) {
		this.descricao_forma_pagamento = descricao_forma_pagamento;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Pedido [cod_pedido=" + cod_pedido + ", valor_total_pedido=" + valor_total_pedido + ", data_pedido="
				+ data_pedido + ", cod_veiculo=" + cod_veiculo + ", modelo_veiculo=" + modelo_veiculo + ", ano_veiculo="
				+ ano_veiculo + ", numero_chassi=" + numero_chassi + ", marca_veiculo=" + marca_veiculo
				+ ", nome_cliente=" + nome_cliente + ", numero_documento=" + numero_documento + ", telefone_cliente="
				+ telefone_cliente + ", razao_social=" + razao_social + ", email_cliente=" + email_cliente
				+ ", cep_endereco=" + cep_endereco + ", rua_endereco=" + rua_endereco + ", numero_endereco="
				+ numero_endereco + ", bairro=" + bairro + ", cidade=" + cidade + ", uf=" + uf + ", valor_frete="
				+ valor_frete + ", unidade_federativa=" + unidade_federativa + ", descricao_forma_pagamento="
				+ descricao_forma_pagamento + ", status=" + status + "]";
	}

}
