package br.com.entidade;

import java.util.Date;

public class Cliente {
		//  
	private Integer cod_cliente; 
//	private String tipo_documento;
	private String numero_documento;
	private String nome_cliente;
	private Date data_nascimento;
	private String email_cliente;
	private String telefone_cliente;
//	private String senha_cliente;
//	private String inscricao_estadual;
	private String razao_social;
	
	
//	public Cliente(Integer cod_cliente, String tipo_documento, String numero_documento, String nome_cliente,
//			java.util.Date data_nascimento2, String email_cliente, String telefone_cliente, String senha_cliente,
//			String inscricao_estadual, String razao_social) {
	public Cliente(Integer cod_cliente, String numero_documento,String nome_cliente,String telefone_cliente,Date data_nascimento,String razao_social,String email_cliente) {
		super();		

		this.cod_cliente = cod_cliente;
		
		this.numero_documento = numero_documento;
		
		this.nome_cliente = nome_cliente;
		
		this.telefone_cliente = telefone_cliente;
		
		this.data_nascimento = data_nascimento;
		
		this.razao_social = razao_social;
	
		this.email_cliente = email_cliente;
		
//		this.cod_cliente = cod_cliente;
//		this.tipo_documento = tipo_documento;
//		this.numero_documento = numero_documento;
//		this.nome_cliente = nome_cliente;
//		this.data_nascimento = (Date) data_nascimento2;
//		this.email_cliente = email_cliente;
//		this.telefone_cliente = telefone_cliente;
//		this.senha_cliente = senha_cliente;
//		this.inscricao_estadual = inscricao_estadual;
//		this.razao_social = razao_social;
	}











	public Integer getCod_cliente() {
		return cod_cliente;
	}



//	public String getTipo_documento() {
//		return tipo_documento;
//	}

//	public void setTipo_documento(String tipo_documento) {
//		this.tipo_documento = tipo_documento;
//	}

	public String getNumero_documento() {
		return numero_documento;
	}

	public void setNumero_documento(String numero_documento) {
		this.numero_documento = numero_documento;
	}

	public String getNome_cliente() {
		return nome_cliente;
	}

	public void setNome_cliente(String nome_cliente) {
		this.nome_cliente = nome_cliente;
	}

	public Date getData_nascimento() {
		return data_nascimento;
	}

	public void setData_nascimento(Date data_nascimento) {
		this.data_nascimento = data_nascimento;
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

//	public String getSenha_cliente() {
//		return senha_cliente;
//	}

//	public void setSenha_cliente(String senha_cliente) {
//		this.senha_cliente = senha_cliente;
//	}

//	public String getInscricao_estadual() {
//		return inscricao_estadual;
//	}

//	public void setInscricao_estadual(String inscricao_estadual) {
//		this.inscricao_estadual = inscricao_estadual;
//	}

	public String getRazao_social() {
		return razao_social;
	}

	public void setRazao_social(String razao_social) {
		this.razao_social = razao_social;
	}



//	@Override
//	public String toString() {
//		return "Cliente= \n [cod_cliente= \n" + cod_cliente + ", tipo_documento=" + tipo_documento + ", numero_documento="
//				+ numero_documento + ", nome_cliente=" + nome_cliente + ", data_nascimento=" + data_nascimento
//				+ ", email_cliente=" + email_cliente + ", telefone_cliente=" + telefone_cliente + ", senha_cliente="
//				+ senha_cliente + ", inscricao_estadual=" + inscricao_estadual + ", razao_social=" + razao_social + "]";
//	}

	
	@Override
	public String toString() {
		return "Cliente= \n [cod_cliente= \n" + cod_cliente + ", numero_documento="
				+ numero_documento + ", nome_cliente=" + nome_cliente + ", data_nascimento=" + data_nascimento
				+ ", email_cliente=" + email_cliente + ", telefone_cliente=" + telefone_cliente + ""
				+  ", razao_social=" + razao_social + "]";
	}











	public void setCod_cliente(Integer cod_cliente2) {
		// TODO Auto-generated method stub
		
	}
	
}