package br.com.entidade;

public class Combustivel {
	
	private Integer cod_combustivel;
	private String tipo_combustivel;
	
	
	public Combustivel(Integer cod_combustivel, String tipo_combustivel) {
		super();
		this.cod_combustivel = cod_combustivel;
		this.tipo_combustivel = tipo_combustivel;
	}


	public Integer getCod_combustivel() {
		return cod_combustivel;
	}


	public void setCod_combustivel(Integer cod_combustivel) {
		this.cod_combustivel = cod_combustivel;
	}


	public String getTipo_combustivel() {
		return tipo_combustivel;
	}


	public void setTipo_combustivel(String tipo_combustivel) {
		this.tipo_combustivel = tipo_combustivel;
	}


	@Override
	public String toString() {
		return "Combustivel [cod_combustivel=" + cod_combustivel + ", tipo_combustivel=" + tipo_combustivel + "]";
	}
	
	
}
