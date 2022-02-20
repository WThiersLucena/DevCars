package br.com.entidade;

public class Cor {
	
	private Integer cod_cor;
	private String nome_cor;
	
	//Método construtor
	
	public Cor(Integer cod_cor, String nome_cor) {
		super();
		this.cod_cor = cod_cor;
		this.nome_cor = nome_cor;
	}

	//MÉTODO GETTERS AND SETTERS 
	
	public Integer getCod_cor() {
		return cod_cor;
	}

	public void setCod_cor(Integer cod_cor) {
		this.cod_cor = cod_cor;
	}

	public String getNome_cor() {
		return nome_cor;
	}

	public void setNome_cor(String nome_cor) {
		this.nome_cor = nome_cor;
	}

	//MÉTODO TOSTRING:
	
	@Override
	public String toString() {
		return "Cor [cod_cor=" + cod_cor + ", nome_cor=" + nome_cor + "]";
	}
	
	
}
