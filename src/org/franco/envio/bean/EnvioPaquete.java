package org.franco.envio.bean;

public class EnvioPaquete {
	private Integer idEnvioPaquete;
	private StockPaquete idStockPaquete;
	private Usuario idUsuario;
	private String fechaenvio;
	private String fechaentrega;
	private String fecharetraso;
	
	public Integer getIdEnvioPaquete() {
		return idEnvioPaquete;
	}
	public void setIdEnvioPaquete(Integer idEnvioPaquete) {
		this.idEnvioPaquete = idEnvioPaquete;
	}
	public StockPaquete getIdStockPaquete() {
		return idStockPaquete;
	}
	public void setIdStockPaquete(StockPaquete idStockPaquete) {
		this.idStockPaquete = idStockPaquete;
	}
	public Usuario getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(Usuario idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getFechaenvio() {
		return fechaenvio;
	}
	public void setFechaenvio(String fechaenvio) {
		this.fechaenvio = fechaenvio;
	}
	public String getFechaentrega() {
		return fechaentrega;
	}
	public void setFechaentrega(String fechaentrega) {
		this.fechaentrega = fechaentrega;
	}
	public String getFecharetraso() {
		return fecharetraso;
	}
	public void setFecharetraso(String fecharetraso) {
		this.fecharetraso = fecharetraso;
	}
	
	public EnvioPaquete(Integer idEnvioPaquete, StockPaquete idStockPaquete, Usuario idUsuario, String fechaenvio,
			String fechaentrega, String fecharetraso) {
		super();
		this.idEnvioPaquete = idEnvioPaquete;
		this.idStockPaquete = idStockPaquete;
		this.idUsuario = idUsuario;
		this.fechaenvio = fechaenvio;
		this.fechaentrega = fechaentrega;
		this.fecharetraso = fecharetraso;
	}
	
	public EnvioPaquete() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
