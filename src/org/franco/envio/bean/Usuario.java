package org.franco.envio.bean;

public class Usuario {
	private Integer idUsuario;
	private String nombre;
	private String nickname;
	private String contraseña;
	private String correo;
	private String direccion;
	private Rol idRol;
	
	public Integer getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getContraseña() {
		return contraseña;
	}
	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public Rol getIdRol() {
		return idRol;
	}
	public void setIdRol(Rol idRol) {
		this.idRol = idRol;
	}
	
	public Usuario(Integer idUsuario, String nombre, String nickname, String contraseña, String correo,
			String direccion, Rol idRol) {
		super();
		this.idUsuario = idUsuario;
		this.nombre = nombre;
		this.nickname = nickname;
		this.contraseña = contraseña;
		this.correo = correo;
		this.direccion = direccion;
		this.idRol = idRol;
	}
	
	public Usuario() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
