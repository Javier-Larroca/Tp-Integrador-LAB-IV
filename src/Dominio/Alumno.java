package Dominio;

public class Alumno extends Persona {

	private Provincia provincia;

	public Provincia getProvincia() {
		return provincia;
	}

	public void setProvincia(Provincia provincia) {
		this.provincia = provincia;
	}

	public Alumno(Provincia provincia, String mail, int legajo, String dni, String nombre, String apellido, String direccion,
			String nacimiento, String telefono, Nacionalidad nacionalidad) {
		
		super(mail, legajo, dni, nombre, apellido, direccion, nacimiento, telefono,  nacionalidad);
		///agregar bien la provincia
		this.provincia = provincia;
		
	}
	
	
}
