package Dominio;

public class Docente extends Persona{

	private Localidad localidad;
	private int tipoUsuario;

public Docente() {
	
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
