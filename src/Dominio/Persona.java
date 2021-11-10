package Dominio;

public class Persona {
	
	private int id;
	private String mail;
	private int legajo;
	private String dni;
	private String nombre;
	private String apellido;
	private String fechaNacimiento;
	private String direccion;
	private Nacionalidad nacionalidad;
	private String telefono;
	private boolean estado;

	public boolean getEstado() {
		return estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	public Persona(String mail, int legajo, String dni, String nombre, String apellido, String direccion,
			String nacimiento, String telefono, Nacionalidad nacionalidad) {
		
		this.mail = mail;
		this.legajo = legajo;
		this.dni = dni;
		this.nombre = nombre;
		this.apellido = apellido;
		this.direccion = direccion;
		this.fechaNacimiento = nacimiento;
		this.telefono = telefono;
		this.estado = true;
		///agregar bien la nacionalidad
		this.nacionalidad = nacionalidad;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public int getLegajo() {
		return legajo;
	}

	public void setLegajo(int legajo) {
		this.legajo = legajo;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(String fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public Nacionalidad getNacionalidad() {
		return nacionalidad;
	}

	public void setNacionalidad(Nacionalidad nacionalidad) {
		this.nacionalidad = nacionalidad;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	
	

}
