package br.com.entidade;

public class PedidoCliente {

	 private	String cod_cliente; 
	 private	String nome_cliente;
	 private 	String razao_social;
	 private	String email_cliente;
	 private	String telefone_cliente;
	 private	String cod_pedido;
	 private	String valor_total_pedido;
	 private	String descricao_forma_pagamento;
	 private	String data_envio; 
	 private 	String status;
	 private	String unidade_federativa;
	 private	String valor_frete;
	 
	 public PedidoCliente(String cod_cliente, String nome_cliente, String razao_social, String email_cliente,
			String telefone_cliente, String cod_pedido, String valor_total_pedido, String descricao_forma_pagamento,
			String data_envio, String status, String unidade_federativa, String valor_frete) {
		super();
		
		this.cod_cliente = cod_cliente;
		this.nome_cliente = nome_cliente;
		this.razao_social = razao_social;
		this.email_cliente = email_cliente;
		this.telefone_cliente = telefone_cliente;
		this.cod_pedido = cod_pedido;
		this.valor_total_pedido = valor_total_pedido;
		this.descricao_forma_pagamento = descricao_forma_pagamento;
		this.data_envio = data_envio;
		this.status = status;
		this.unidade_federativa = unidade_federativa;
		this.valor_frete = valor_frete;
	}
	
		
	
	public String getCod_cliente() {
		return cod_cliente;
	}
	public void setCod_cliente(String cod_cliente) {
		this.cod_cliente = cod_cliente;
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
	public String getCod_pedido() {
		return cod_pedido;
	}
	public void setCod_pedido(String cod_pedido) {
		this.cod_pedido = cod_pedido;
	}
	public String getValor_total_pedido() {
		return valor_total_pedido;
	}
	public void setValor_total_pedido(String valor_total_pedido) {
		this.valor_total_pedido = valor_total_pedido;
	}
	public String getDescricao_forma_pagamento() {
		return descricao_forma_pagamento;
	}
	public void setDescricao_forma_pagamento(String descricao_forma_pagamento) {
		this.descricao_forma_pagamento = descricao_forma_pagamento;
	}
	public String getData_envio() {
		return data_envio;
	}
	public void setData_envio(String data_envio) {
		this.data_envio = data_envio;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getUnidade_federativa() {
		return unidade_federativa;
	}
	public void setUnidade_federativa(String unidade_federativa) {
		this.unidade_federativa = unidade_federativa;
	}
	public String getValor_frete() {
		return valor_frete;
	}
	public void setValor_frete(String valor_frete) {
		this.valor_frete = valor_frete;
	}
	@Override
	public String toString() {
		return "PedidoCliente [cod_cliente=" + cod_cliente + ", nome_cliente=" + nome_cliente + ", razao_social="
				+ razao_social + ", email_cliente=" + email_cliente + ", telefone_cliente=" + telefone_cliente
				+ ", cod_pedido=" + cod_pedido + ", valor_total_pedido=" + valor_total_pedido
				+ ", descricao_forma_pagamento=" + descricao_forma_pagamento + ", data_envio=" + data_envio
				+ ", status=" + status + ", unidade_federativa=" + unidade_federativa + ", valor_frete=" + valor_frete + "]";
	}
	 
			
}


