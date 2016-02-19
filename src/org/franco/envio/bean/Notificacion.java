package org.franco.envio.bean;

public class Notificacion {
	private Integer idNotificacion;
	private String fecha;
	private String mensaje;
	private EnvioPaquete idEnvioPaquete;
	
	public Integer getIdNotificacion() {
		return idNotificacion;
	}
	public void setIdNotificacion(Integer idNotificacion) {
		this.idNotificacion = idNotificacion;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	public String getMensaje() {
		return mensaje;
	}
	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}
	public EnvioPaquete getIdEnvioPaquete() {
		return idEnvioPaquete;
	}
	public void setIdEnvioPaquete(EnvioPaquete idEnvioPaquete) {
		this.idEnvioPaquete = idEnvioPaquete;
	}

	
}