package br.com.entidade;

public class Cambio {

	private Integer cod_cambio;
	private String cambio;
	
	public Cambio(Integer cod_cambio, String cambio) {
		super();
		this.cod_cambio = cod_cambio;
		this.cambio = cambio;
	}

	public Integer getCod_cambio() {
		return cod_cambio;
	}

	public void setCod_cambio(Integer cod_cambio) {
		this.cod_cambio = cod_cambio;
	}

	public String getCambio() {
		return cambio;
	}

	public void setCambio(String cambio) {
		this.cambio = cambio;
	}

	@Override
	public String toString() {
		return "Cambio [cod_cambio=" + cod_cambio + ", cambio=" + cambio + "]";
	}

	
}
