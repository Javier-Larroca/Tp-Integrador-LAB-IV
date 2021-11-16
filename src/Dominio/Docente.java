package Dominio;

public class Docente extends Persona{

	private Localidad localidad;
	private int tipoUsuario;


	public Docente(String nombre, String apellido) {
		super(nombre, apellido);
	}

public Docente(String mail, int legajo, String dni, String nombre, String apellido, String direccion,
			String nacimiento, String telefono, Nacionalidad nacionalidad, Localidad localidad) {
		super(mail, legajo, dni, nombre, apellido, direccion, nacimiento, telefono, nacionalidad);
		this.localidad = localidad;
	}

public Localidad getLocalidad() {
	return this.localidad;
}

public int getTipoUsuario(){
	return this.tipoUsuario;
}

public void setLocalidad(Localidad localidad) {
	this.localidad = localidad;
}

public void setTipoUsuario(int tipoUsuario) {
	this.tipoUsuario = tipoUsuario;
}

}
