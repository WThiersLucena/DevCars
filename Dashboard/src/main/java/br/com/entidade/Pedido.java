package br.com.entidade;

import java.util.Date;

public class Pedido {

	private Integer cod_pedido;
	private String nome_cliente;
	private String razao_social;
	private String numero_documento;
	private String email_cliente;
	private String telefone_cliente;
	private String descricao_forma_pagamento; 
	private String valor_frete; 
	private String valor_total_pedido;
	private Date data_pedido;
	private String status;
	
	

	public Pedido(String string) {
		// TODO Auto-generated constructor stub
	}

	public Integer getCod_pedido() {
		return cod_pedido;
	}


	public Pedido(Integer cod_pedido, String nome_cliente, String razao_social, String numero_documento,
		String email_cliente, String telefone_cliente, String descricao_forma_pagamento, String valor_frete,
		String valor_total_pedido, Date data_pedido, String status) {
	super();
	this.cod_pedido = cod_pedido;
	this.nome_cliente = nome_cliente;
	this.razao_social = razao_social;
	this.numero_documento = numero_documento;
	this.email_cliente = email_cliente;
	this.telefone_cliente = telefone_cliente;
	this.descricao_forma_pagamento = descricao_forma_pagamento;
	this.valor_frete = valor_frete;
	this.valor_total_pedido = valor_total_pedido;
	this.data_pedido = data_pedido;
	this.status = status;
}


	public void setCod_pedido(Integer cod_pedido) {
		this.cod_pedido = cod_pedido;
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



	public String getDescricao_forma_pagamento() {
		return descricao_forma_pagamento;
	}



	public void setDescricao_forma_pagamento(String descricao_forma_pagamento) {
		this.descricao_forma_pagamento = descricao_forma_pagamento;
	}



	public String getValor_frete() {
		return valor_frete;
	}



	public void setValor_frete(String valor_frete) {
		this.valor_frete = valor_frete;
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



	public String getStatus() {
		return status;
	}



	@Override
	public String toString() {
		return "Pedido [cod_pedido=" + cod_pedido + ", nome_cliente=" + nome_cliente + ", razao_social=" + razao_social
				+ ", numero_documento=" + numero_documento + ", email_cliente=" + email_cliente + ", telefone_cliente="
				+ telefone_cliente + ", descricao_forma_pagamento=" + descricao_forma_pagamento + ", valor_frete="
				+ valor_frete + ", valor_total_pedido=" + valor_total_pedido + ", data_pedido=" + data_pedido
				+ ", status=" + status + "]";
	}



	public void setStatus(String status) {
		this.status = status;
	}

	
}
