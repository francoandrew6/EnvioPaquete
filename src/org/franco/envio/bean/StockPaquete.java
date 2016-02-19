package org.franco.envio.bean;

public class StockPaquete {
	private Integer idStockPaquete;
	private Double valorViaje;
	private String estado;
	private Paquete idPaquete;
	
	public Integer getIdStockPaquete() {
		return idStockPaquete;
	}
	public void setIdStockPaquete(Integer idStockPaquete) {
		this.idStockPaquete = idStockPaquete;
	}
	public Double getValorViaje() {
		return valorViaje;
	}
	public void setValorViaje(Double valorViaje) {
		this.valorViaje = valorViaje;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public Paquete getIdPaquete() {
		return idPaquete;
	}
	public void setIdPaquete(Paquete idPaquete) {
		this.idPaquete = idPaquete;
	}
	
	public StockPaquete(Integer idStockPaquete, Double valorViaje, String estado, Paquete idPaquete) {
		super();
		this.idStockPaquete = idStockPaquete;
		this.valorViaje = valorViaje;
		this.estado = estado;
		this.idPaquete = idPaquete;
	}
	
	public StockPaquete() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
