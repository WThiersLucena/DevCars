package br.com.entidade;

import java.util.Date;

public class Cliente {
 
	private String cod_cliente; 
	private String nome_cliente;
	private String razao_social;
	private String email_cliente;
	private Date data_nascimento;
	private String telefone_cliente;
	private String cep_endeco;
	private String rua_endereco;
	private String complemento;
	private String numero_endereco;
	private String bairro;
	private String cidade;
	private String uf;
	
	
	public Cliente(String cod_cliente, String nome_cliente, String razao_social, String email_cliente,
			Date data_nascimento, String telefone_cliente, String cep_endeco, String rua_endereco, String complemento,
			String numero_endereco, String bairro, String cidade, String uf) {
		super();
		this.cod_cliente = cod_cliente;
		this.nome_cliente = nome_cliente;
		this.razao_social = razao_social;
		this.email_cliente = email_cliente;
		this.data_nascimento = data_nascimento;
		this.telefone_cliente = telefone_cliente;
		this.cep_endeco = cep_endeco;
		this.rua_endereco = rua_endereco;
		this.complemento = complemento;
		this.numero_endereco = numero_endereco;
		this.bairro = bairro;
		this.cidade = cidade;
		this.uf = uf;
	}
	
	
	
	public Cliente(String nome_cliente, String razao_social, String email_cliente, Date data_nascimento,
			String telefone_cliente, String cep_endeco, String rua_endereco, String complemento, String numero_endereco,
			String bairro, String cidade, String uf) {
		super();
		this.nome_cliente = nome_cliente;
		this.razao_social = razao_social;
		this.email_cliente = email_cliente;
		this.data_nascimento = data_nascimento;
		this.telefone_cliente = telefone_cliente;
		this.cep_endeco = cep_endeco;
		this.rua_endereco = rua_endereco;
		this.complemento = complemento;
		this.numero_endereco = numero_endereco;
		this.bairro = bairro;
		this.cidade = cidade;
		this.uf = uf;
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
	public Date getData_nascimento() {
		return data_nascimento;
	}
	public void setData_nascimento(Date data_nascimento) {
		this.data_nascimento = data_nascimento;
	}
	public String getTelefone_cliente() {
		return telefone_cliente;
	}
	public void setTelefone_cliente(String telefone_cliente) {
		this.telefone_cliente = telefone_cliente;
	}
	public String getCep_endeco() {
		return cep_endeco;
	}
	public void setCep_endeco(String cep_endeco) {
		this.cep_endeco = cep_endeco;
	}
	public String getRua_endereco() {
		return rua_endereco;
	}
	public void setRua_endereco(String rua_endereco) {
		this.rua_endereco = rua_endereco;
	}
	public String getComplemento() {
		return complemento;
	}
	public void setComplemento(String complemento) {
		this.complemento = complemento;
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



	@Override
	public String toString() {
		return "Cliente [cod_cliente=" + cod_cliente + ", nome_cliente=" + nome_cliente + ", razao_social="
				+ razao_social + ", email_cliente=" + email_cliente + ", data_nascimento=" + data_nascimento
				+ ", telefone_cliente=" + telefone_cliente + ", cep_endeco=" + cep_endeco + ", rua_endereco="
				+ rua_endereco + ", complemento=" + complemento + ", numero_endereco=" + numero_endereco + ", bairro="
				+ bairro + ", cidade=" + cidade + ", uf=" + uf + "]";
	}
	
	
}