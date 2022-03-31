package br.com.entidade;

public class CartaoCliente {
	private Integer cod_cliente; 
	private Integer cod_cartao;
	private String nome_cliente;
	private String razao_social;
	private String numero_cartao; 
	private String descricao_modalidade;
	
	
	public CartaoCliente(Integer cod_cliente, Integer cod_cartao, String nome_cliente, String razao_social,
			String numero_cartao, String descricao_modalidade) {
		super();
		this.cod_cliente = cod_cliente;
		this.cod_cartao = cod_cartao;
		this.nome_cliente = nome_cliente;
		this.razao_social = razao_social;
		this.numero_cartao = numero_cartao;
		this.descricao_modalidade = descricao_modalidade;
	}
	
	
	public Integer getCod_cliente() {
		return cod_cliente;
	}
	public void setCod_cliente(Integer cod_cliente) {
		this.cod_cliente = cod_cliente;
	}
	public Integer getCod_cartao() {
		return cod_cartao;
	}
	public void setCod_cartao(Integer cod_cartao) {
		this.cod_cartao = cod_cartao;
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
	public String getNumero_cartao() {
		return numero_cartao;
	}
	public void setNumero_cartao(String numero_cartao) {
		this.numero_cartao = numero_cartao;
	}
	public String getDescricao_modalidade() {
		return descricao_modalidade;
	}
	public void setDescricao_modalidade(String descricao_modalidade) {
		this.descricao_modalidade = descricao_modalidade;
	}


	@Override
	public String toString() {
		return "CartaoCliente [cod_cliente=" + cod_cliente + ", cod_cartao=" + cod_cartao + ", nome_cliente="
				+ nome_cliente + ", razao_social=" + razao_social + ", numero_cartao=" + numero_cartao
				+ ", descricao_modalidade=" + descricao_modalidade + "]";
	}
	
	
	
	
}
