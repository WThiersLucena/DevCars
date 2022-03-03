package br.com.entidade;

public class Endereco {

		private	String cod_cliente;
		private	String cep_endereco;
		private	String rua_endereco;
		private	String complemento;
		private	String numero_endereco;
		private	String bairro;
		private	String cidade;
		private	String uf;
		public Endereco() {
			super();
			// TODO Auto-generated constructor stub
		}
		public Endereco(String cod_cliente, String cep_endereco, String rua_endereco, String complemento,
				String numero_endereco, String bairro, String cidade, String uf) {
			super();
			this.cod_cliente = cod_cliente;
			this.cep_endereco = cep_endereco;
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
		public String getCep_endereco() {
			return cep_endereco;
		}
		public void setCep_endereco(String cep_endereco) {
			this.cep_endereco = cep_endereco;
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
			return "Endereco [cod_cliente=" + cod_cliente + ", cep_endereco=" + cep_endereco + ", rua_endereco="
					+ rua_endereco + ", complemento=" + complemento + ", numero_endereco=" + numero_endereco
					+ ", bairro=" + bairro + ", cidade=" + cidade + ", uf=" + uf + "]";
		}
	
		
		
	}


