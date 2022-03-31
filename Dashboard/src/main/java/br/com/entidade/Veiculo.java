package br.com.entidade;

public class Veiculo {
	private Integer cod_veiculo;
	private String modelo_veiculo;
	private String marca_veiculo;
	private String nome_cor;
	private Integer ano_veiculo;
	private String motor_veiculo;
	private String potencia_cv;
	private Double preco_veiculo;
	private String tipo_combustivel;
	private String cambio;
	private String numero_chassi;
	private Boolean estoque;
	private Boolean destaque;
	private Boolean seAtivo;
	private String link_imagem;
	private String descricao_veiculo;
	
	private Integer cod_marca;
	private Integer cod_cor;
	private Integer cod_motor;
	private Integer cod_combustivel;
	private Integer cod_cambio;
	private Integer cod_fornecedor;
	
	
	
	
	private Veiculo() {
		super();
	}
	
	//Método para inserir
	
//	p.setInt(1, veiculo.getCod_marca());
//	p.setString(2, veiculo.getModelo_veiculo());
//	p.setString(3, veiculo.getNumero_chassi());
//	p.setInt(4, veiculo.getAno_veiculo());
//	p.setDouble(5, veiculo.getPreco_veiculo());
//	p.setInt(6, veiculo.getCod_cor());
//	p.setInt(7, veiculo.getCod_motor());
//	p.setInt(8, veiculo.getCod_combustivel());
//	p.setInt(9, veiculo.getCod_cambio());
//	p.setInt(10, veiculo.getCod_fornecedor());
//	p.setBoolean(11, veiculo.getEstoque());
//	p.setBoolean(12, veiculo.getDestaque());
	
	public Veiculo(Integer cod_marca, String modelo_veiculo, String numero_chassi, Integer ano_veiculo, Double preco_veiculo,Integer cod_cor, Integer cod_motor,
			   Integer cod_combustivel, Integer cod_cambio, Integer cod_fornecedor, Boolean estoque, Boolean destaque, String link_imagem, String descricao_veiculo) {
	super();
	this.modelo_veiculo = modelo_veiculo;
	this.cod_marca = cod_marca;
	this.cod_cor = cod_cor;
	this.ano_veiculo = ano_veiculo;
	this.cod_motor = cod_motor;
	this.preco_veiculo = preco_veiculo;
	this.cod_combustivel = cod_combustivel;
	this.cod_cambio = cod_cambio;
	this.cod_fornecedor = cod_fornecedor;
	this.numero_chassi = numero_chassi;
	this.estoque = estoque;
	this.destaque = destaque;
	this.link_imagem = link_imagem;
	this.descricao_veiculo = descricao_veiculo;
}
	

	public Veiculo( String modelo_veiculo, String marca_veiculo,String nome_cor, Integer ano_veiculo,
		       String motor_veiculo, String potencia_cv, Double preco_veiculo, String tipo_combustivel, String cambio,
		       String numero_chassi, Boolean estoque, Boolean destaque, String link_imagem, String descricao_veiculo) {
	super();
	this.modelo_veiculo = modelo_veiculo;
	this.marca_veiculo = marca_veiculo;
	this.nome_cor = nome_cor;
	this.ano_veiculo = ano_veiculo;
	this.motor_veiculo = motor_veiculo;
	this.potencia_cv = potencia_cv;
	this.preco_veiculo = preco_veiculo;
	this.tipo_combustivel = tipo_combustivel;
	this.cambio = cambio;
	this.numero_chassi = numero_chassi;
	this.estoque = estoque;
	this.destaque = destaque;
	this.link_imagem = link_imagem;
	this.descricao_veiculo = descricao_veiculo;
}

	
	
	public Veiculo(Integer cod_marca, String modelo_veiculo, String numero_chassi, Integer ano_veiculo, Double preco_veiculo,Integer cod_cor, Integer cod_motor,
			   Integer cod_combustivel, Integer cod_cambio, Integer cod_fornecedor, Boolean estoque, Boolean destaque) {
	super();
	this.modelo_veiculo = modelo_veiculo;
	this.cod_marca = cod_marca;
	this.cod_cor = cod_cor;
	this.ano_veiculo = ano_veiculo;
	this.cod_motor = cod_motor;
	this.preco_veiculo = preco_veiculo;
	this.cod_combustivel = cod_combustivel;
	this.cod_cambio = cod_cambio;
	this.cod_fornecedor = cod_fornecedor;
	this.numero_chassi = numero_chassi;
	this.estoque = estoque;
	this.destaque = destaque;
}
	

	public Veiculo( String modelo_veiculo, String marca_veiculo,String nome_cor, Integer ano_veiculo,
		       String motor_veiculo, String potencia_cv, Double preco_veiculo, String tipo_combustivel, String cambio,
		       String numero_chassi, Boolean estoque, Boolean destaque) {
	super();
	this.modelo_veiculo = modelo_veiculo;
	this.marca_veiculo = marca_veiculo;
	this.nome_cor = nome_cor;
	this.ano_veiculo = ano_veiculo;
	this.motor_veiculo = motor_veiculo;
	this.potencia_cv = potencia_cv;
	this.preco_veiculo = preco_veiculo;
	this.tipo_combustivel = tipo_combustivel;
	this.cambio = cambio;
	this.numero_chassi = numero_chassi;
	this.estoque = estoque;
	this.destaque = destaque;
}
//	public Veiculo(String marca_veiculo, String modelo_veiculo, String nome_cor, Integer ano_veiculo,
//			       String motor_veiculo, String potencia_cv, Double preco_veiculo, String tipo_combustivel, String cambio,
//			       String numero_chassi, Boolean estoque, Boolean destaque) {
//		super();
//		this.marca_veiculo = marca_veiculo;
//		this.modelo_veiculo = modelo_veiculo;
//		this.nome_cor = nome_cor;
//		this.ano_veiculo = ano_veiculo;
//		this.motor_veiculo = motor_veiculo;
//		this.potencia_cv = potencia_cv;
//		this.preco_veiculo = preco_veiculo;
//		this.tipo_combustivel = tipo_combustivel;
//		this.cambio = cambio;
//		this.numero_chassi = numero_chassi;
//		this.estoque = estoque;
//		this.destaque = destaque;
//	}
	
	
//	public Veiculo(Integer cod_marca, String modelo_veiculo, Integer cod_cor, Integer ano_veiculo, Integer cod_motor, Double preco_veiculo,
//				   Integer cod_combustivel, Integer cod_cambio, Integer cod_fornecedor, String numero_chassi, Boolean estoque, Boolean destaque) {
//		super();
//		this.cod_marca = cod_marca;
//		this.modelo_veiculo = modelo_veiculo;
//		this.cod_cor = cod_cor;
//		this.ano_veiculo = ano_veiculo;
//		this.cod_motor = cod_motor;
//		this.preco_veiculo = preco_veiculo;
//		this.cod_combustivel = cod_combustivel;
//		this.cod_cambio = cod_cambio;
//		this.cod_fornecedor = cod_fornecedor;
//		this.numero_chassi = numero_chassi;
//		this.estoque = estoque;
//		this.destaque = destaque;
//	}
	
	
//	//Método construtor para atualizar
//	public Veiculo(Integer cod_marca, String modelo_veiculo, Integer cod_cor, Integer ano_veiculo, Integer cod_motor, Double preco_veiculo,
//			   Integer cod_combustivel, Integer cod_cambio, Integer cod_fornecedor, String numero_chassi, Boolean estoque, Boolean destaque) {
//	super();
//	this.modelo_veiculo = modelo_veiculo;
//	this.cod_marca = cod_marca;
//	this.cod_cor = cod_cor;
//	this.ano_veiculo = ano_veiculo;
//	this.cod_motor = cod_motor;
//	this.preco_veiculo = preco_veiculo;
//	this.cod_combustivel = cod_combustivel;
//	this.cod_cambio = cod_cambio;
//	this.cod_fornecedor = cod_fornecedor;
//	this.numero_chassi = numero_chassi;
//	this.estoque = estoque;
//	this.destaque = destaque;
//}

	


	public Integer getCod_veiculo() {
		return cod_veiculo;
	}



	public void setCod_veiculo(Integer cod_veiculo) {
		this.cod_veiculo = cod_veiculo;
	}



	public String getMarca_veiculo() {
		return marca_veiculo;
	}



	public void setMarca_veiculo(String marca_veiculo) {
		this.marca_veiculo = marca_veiculo;
	}



	public String getModelo_veiculo() {
		return modelo_veiculo;
	}



	public void setModelo_veiculo(String modelo_veiculo) {
		this.modelo_veiculo = modelo_veiculo;
	}



	public String getNome_cor() {
		return nome_cor;
	}



	public void setNome_cor(String nome_cor) {
		this.nome_cor = nome_cor;
	}



	public Integer getAno_veiculo() {
		return ano_veiculo;
	}



	public void setAno_veiculo(Integer ano_veiculo) {
		this.ano_veiculo = ano_veiculo;
	}



	public String getMotor_veiculo() {
		return motor_veiculo;
	}



	public void setMotor_veiculo(String motor_veiculo) {
		this.motor_veiculo = motor_veiculo;
	}



	public String getPotencia_cv() {
		return potencia_cv;
	}



	public void setPotencia_cv(String potencia_cv) {
		this.potencia_cv = potencia_cv;
	}



	public Double getPreco_veiculo() {
		return preco_veiculo;
	}



	public void setPreco_veiculo(Double preco_veiculo) {
		this.preco_veiculo = preco_veiculo;
	}



	public String getTipo_combustivel() {
		return tipo_combustivel;
	}



	public void setTipo_combustivel(String tipo_combustivel) {
		this.tipo_combustivel = tipo_combustivel;
	}



	public String getCambio() {
		return cambio;
	}



	public void setCambio(String cambio) {
		this.cambio = cambio;
	}



	public String getNumero_chassi() {
		return numero_chassi;
	}



	public void setNumero_chassi(String numero_chassi) {
		this.numero_chassi = numero_chassi;
	}



	public Boolean getEstoque() {
		return this.estoque;
	}

	
	public void setEstoque(Boolean estoque) {
		this.estoque = estoque;
	}
	
	
	public Boolean getDestaque() {
		return destaque;
	}



	public void setDestaque(Boolean destaque) {
		this.destaque = destaque;
	}


	

	public Integer getCod_marca() {
		return cod_marca;
	}



	public void setCod_marca(Integer cod_marca) {
		this.cod_marca = cod_marca;
	}



	public Integer getCod_cor() {
		return cod_cor;
	}



	public void setCod_cor(Integer cod_cor) {
		this.cod_cor = cod_cor;
	}



	public Integer getCod_motor() {
		return cod_motor;
	}



	public void setCod_motor(Integer cod_motor) {
		this.cod_motor = cod_motor;
	}



	public Integer getCod_combustivel() {
		return cod_combustivel;
	}



	public void setCod_combustivel(Integer cod_combustivel) {
		this.cod_combustivel = cod_combustivel;
	}



	public Integer getCod_cambio() {
		return cod_cambio;
	}



	public void setCod_cambio(Integer cod_cambio) {
		this.cod_cambio = cod_cambio;
	}



	public Integer getCod_fornecedor() {
		return cod_fornecedor;
	}



	public void setCod_fornecedor(Integer cod_fornecedor) {
		this.cod_fornecedor = cod_fornecedor;
	}



	public Boolean getSeAtivo() {
		return seAtivo;
	}

	public void setSeAtivo(Boolean seAtivo) {
		this.seAtivo = seAtivo;
	}

	public String getLink_imagem() {
		return link_imagem;
	}

	public void setLink_imagem(String link_imagem) {
		this.link_imagem = link_imagem;
	}

	public String getDescricao_veiculo() {
		return descricao_veiculo;
	}

	public void setDescricao_veiculo(String descricao_veiculo) {
		this.descricao_veiculo = descricao_veiculo;
	}
	
	

	@Override
	public String toString() {
		return "Veiculo [cod_veiculo=" + cod_veiculo + ", modelo_veiculo=" + modelo_veiculo + ", marca_veiculo="
				+ marca_veiculo + ", nome_cor=" + nome_cor + ", ano_veiculo=" + ano_veiculo + ", motor_veiculo="
				+ motor_veiculo + ", potencia_cv=" + potencia_cv + ", preco_veiculo=" + preco_veiculo
				+ ", tipo_combustivel=" + tipo_combustivel + ", cambio=" + cambio + ", numero_chassi=" + numero_chassi
				+ ", estoque=" + estoque + ", destaque=" + destaque + ", seAtivo=" + seAtivo + ", link_imagem="
				+ link_imagem + ", descricao_veiculo=" + descricao_veiculo + ", cod_marca=" + cod_marca + ", cod_cor="
				+ cod_cor + ", cod_motor=" + cod_motor + ", cod_combustivel=" + cod_combustivel + ", cod_cambio="
				+ cod_cambio + ", cod_fornecedor=" + cod_fornecedor + "]";
	}







//	@Override
//	public String toString() {
////		return "Veiculo [cod_veiculo=" + cod_veiculo + ", marca_veiculo=" + marca_veiculo + ", modelo_veiculo="
////				+ modelo_veiculo + ", nome_cor=" + nome_cor + ", ano_veiculo=" + ano_veiculo + ", motor_veiculo="
////				+ motor_veiculo + ", potencia_cv=" + potencia_cv + ", preco_veiculo=" + preco_veiculo
////				+ ", tipo_combustivel=" + tipo_combustivel + ", cambio=" + cambio + ", numero_chassi=" + numero_chassi
////				+ ", estoque=" + estoque + ", destaque=" + destaque + "]";
//	
		
	
		
		
		
//		update tb_veiculo set modelo_veiculo = "URUS", cod_marca = 1, numero_chassi = "12345678903336521", ano_veiculo = 2020, preco_veiculo = 100000.00,
//				cod_cor = 1, cod_motor = 1, cod_combustivel = 1, cod_cambio = 1, cod_fornecedor = 1, estoque = TRUE, destaque = FALSE
//				where cod_veiculo = 27;
}
