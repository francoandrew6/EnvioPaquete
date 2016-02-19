package org.franco.envio.bean;

public class Usuario {
	private Integer idUsuario;
	private String nombre;
	private String nickname;
	private String contrase�a;
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
	public String getContrase�a() {
		return contrase�a;
	}
	public void setContrase�a(String contrase�a) {
		this.contrase�a = contrase�a;
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
	
	public Usuario(Integer idUsuario, String nombre, String nickname, String contrase�a, String correo,
			String direccion, Rol idRol) {
		super();
		this.idUsuario = idUsuario;
		this.nombre = nombre;
		this.nickname = nickname;
		this.contrase�a = contrase�a;
		this.correo = correo;
		this.direccion = direccion;
		this.idRol = idRol;
	}
	
	public Usuario() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
