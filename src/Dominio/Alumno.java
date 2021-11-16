package Dominio;

public class Alumno extends Persona {

	@Override
	public String toString() {
		return "Alumno [provincia=" + provincia + ", getEstado()=" + getEstado() + ", getId()=" + getId()
				+ ", getMail()=" + getMail() + ", getLegajo()=" + getLegajo() + ", getDni()=" + getDni()
				+ ", getNombre()=" + getNombre() + ", getApellido()=" + getApellido() + ", getFechaNacimiento()="
				+ getFechaNacimiento() + ", getDireccion()=" + getDireccion() + ", getNacionalidad()="
				+ getNacionalidad() + ", getTelefono()=" + getTelefono() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

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
	
	public Alumno(int id, Provincia provincia, String mail, int legajo, String dni, String nombre, String apellido, String direccion,
			String nacimiento, String telefono, Nacionalidad nacionalidad) {
		
		super(mail, legajo, dni, nombre, apellido, direccion, nacimiento, telefono,  nacionalidad);
		///agregar bien la provincia
		this.provincia = provincia;
		this.setId(id);
		
	}
	
	
}
