package Dominio;

public class Administrador {
	int id;
	int tipoUsuario;
	String Mail;
	String contrase�a;
	
	public Administrador() {
		
	}
	
	public Administrador(int id, int tipoUsuario, String mail, String contrase�a) {
		this.id = id;
		this.tipoUsuario = tipoUsuario;
		this.Mail = mail;
		this.contrase�a = contrase�a;
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

	public String getContrase�a() {
		return contrase�a;
	}

	public void setContrase�a(String contrase�a) {
		this.contrase�a = contrase�a;
	}
	
	
}
