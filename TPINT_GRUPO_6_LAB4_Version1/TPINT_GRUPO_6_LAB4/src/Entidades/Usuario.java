package Entidades;

public class Usuario {
	private String usuario;
	private String contraseña;
	private int tipoUsuario;
    private boolean Activo;

	
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getContraseña() {
		return contraseña;
	}
	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}
	public int getTipoUsuario() {
	    return tipoUsuario;
	}

	public void setTipoUsuario(int tipoUsuario) {
	    this.tipoUsuario = tipoUsuario;
	}
	public boolean getActivo() {
		return Activo;
	}
	
	public void setActivo(boolean Activo) {
	    this.Activo = Activo;
	}
	
}
