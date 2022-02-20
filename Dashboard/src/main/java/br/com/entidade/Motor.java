package br.com.entidade;

public class Motor {
	private Integer cod_motor;
	private String motor_veiculo;
	private String potencia_cv;
	
	
	public Motor() {
		super();
	}
	
	
	public Motor(Integer cod_motor, String motor_veiculo, String potencia_cv) {
		super();
		this.cod_motor = cod_motor;
		this.motor_veiculo = motor_veiculo;
		this.potencia_cv = potencia_cv;
	}
	public Integer getCod_motor() {
		return cod_motor;
	}
	public void setCod_motor(Integer cod_motor) {
		this.cod_motor = cod_motor;
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
	
	
	@Override
	public String toString() {
		return "Motor [cod_motor=" + cod_motor + ", motor_veiculo=" + motor_veiculo + ", potencia_cv=" + potencia_cv
				+ "]";
	}
	
}
