package br.com.entidade;

public class Fornecedor {
	
	private Integer cod_fornecedor;
	private String cnpj;
	private String razao_social;
	private String inscricao_estadual;
	private String email_fornecedor;
	private String telefone_fornecedor;
	
	//Método Construtor
	
	public Fornecedor(String cnpj, String razao_social, String inscricao_estadual, String email_fornecedor, String telefone_fornecedor) {
		super();
		this.cnpj = cnpj;
		this.razao_social = razao_social;
		this.inscricao_estadual = inscricao_estadual;
		this.email_fornecedor = email_fornecedor;
		this.telefone_fornecedor = telefone_fornecedor;
	}
	

	//Métodos Getters and Setters
	
	public Integer getCod_fornecedor() {
		return cod_fornecedor;
	}

	public void setCod_fornecedor(Integer cod_fornecedor) {
		this.cod_fornecedor = cod_fornecedor;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getRazao_social() {
		return razao_social;
	}

	public void setRazao_social(String razao_social) {
		this.razao_social = razao_social;
	}

	public String getInscricao_estadual() {
		return inscricao_estadual;
	}

	public void setInscricao_estadual(String inscricao_estadual) {
		this.inscricao_estadual = inscricao_estadual;
	}

	public String getEmail_fornecedor() {
		return email_fornecedor;
	}

	public void setEmail_fornecedor(String email_fornecedor) {
		this.email_fornecedor = email_fornecedor;
	}

	public String getTelefone_fornecedor() {
		return telefone_fornecedor;
	}

	public void setTelefone_fornecedor(String telefone_fornecedor) {
		this.telefone_fornecedor = telefone_fornecedor;
	}
	
	// Método toString
	
	
	@Override
	public String toString() {
		return this.cod_fornecedor + ": " +
				this.cnpj + ": " +
				this.razao_social + ": " +
				this.inscricao_estadual + ": " +
				this.email_fornecedor + ": " + 
				this.telefone_fornecedor;
	}
}
