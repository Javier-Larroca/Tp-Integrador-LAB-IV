package Dominio;

public class Administrador {
	int id;
	int tipoUsuario;
	String Mail;
	String contraseña;
	
	public Administrador() {
		
	}
	
	public Administrador(int id, int tipoUsuario, String mail, String contraseña) {
		this.id = id;
		this.tipoUsuario = tipoUsuario;
		this.Mail = mail;
		this.contraseña = contraseña;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTipoUsuario() {
		return tipoUsuario;
	}

	public void setTipoUsuario(int tipoUsuario) {
		this.tipoUsuario = tipoUsuario;
	}

	public String getMail() {
		return Mail;
	}

	public void setMail(String mail) {
		Mail = mail;
	}

	public String getContraseña() {
		return contraseña;
	}

	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}
	
	
}
