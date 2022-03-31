package br.com.entidade;

public class Marca {
	
	private Integer cod_marca;
	private String marca_veiculo;
	
	public Marca(Integer cod_marca, String marca_veiculo) {
		super();
		this.cod_marca = cod_marca;
		this.marca_veiculo = marca_veiculo;
	}

	public Integer getCod_marca() {
		return cod_marca;
	}

	public void setCod_marca(Integer cod_marca) {
		this.cod_marca = cod_marca;
	}

	public String getMarca_veiculo() {
		return marca_veiculo;
	}

	public void setMarca_veiculo(String marca_veiculo) {
		this.marca_veiculo = marca_veiculo;
	}

	@Override
	public String toString() {
		return "Marca [cod_marca=" + cod_marca + ", marca_veiculo=" + marca_veiculo + "]";
	}	
	
}
