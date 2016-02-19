package org.franco.envio.bean;

public class Paquete {
	private Integer idPaquete;
	private String nombre;
	private Integer peso;
	private String descripcion;
	private Double valor;
	private  String tipoPaquete;
	
	public Integer getIdPaquete() {
		return idPaquete;
	}
	public void setIdPaquete(Integer idPaquete) {
		this.idPaquete = idPaquete;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Integer getPeso() {
		return peso;
	}
	public void setPeso(Integer peso) {
		this.peso = peso;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public Double getValor() {
		return valor;
	}
	public void setValor(Double valor) {
		this.valor = valor;
	}
	public String getTipoPaquete() {
		return tipoPaquete;
	}
	public void setTipoPaquete(String tipoPaquete) {
		this.tipoPaquete = tipoPaquete;
	}
	
	public Paquete(Integer idPaquete, String nombre, Integer peso, String descripcion, Double valor,
			String tipoPaquete) {
		super();
		this.idPaquete = idPaquete;
		this.nombre = nombre;
		this.peso = peso;
		this.descripcion = descripcion;
		this.valor = valor;
		this.tipoPaquete = tipoPaquete;
	}
	
	public Paquete() {
		super();
		// TODO Auto-generated constructor stub
	}
	
		
}
