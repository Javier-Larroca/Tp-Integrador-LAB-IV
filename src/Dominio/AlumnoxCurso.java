package Dominio;

public class AlumnoxCurso {

	public AlumnoxCurso() {
		// TODO Auto-generated constructor stub
	}
	
	private int idCurso;
	private int idAlumno;
	private int Parcial1;
	private int Parcial2;
	private int Recuperatorio1;
	private int Recuperatorio2;
	private String Nombre;
	private String Apellido;
	private String Legajo;
	
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
	public String getApellido() {
		return Apellido;
	}
	public void setApellido(String apellido) {
		Apellido = apellido;
	}
	public String getLegajo() {
		return Legajo;
	}
	public void setLegajo(String legajo) {
		Legajo = legajo;
	}
	public int getIdCurso() {
		return idCurso;
	}
	public void setIdCurso(int idCurso) {
		this.idCurso = idCurso;
	}
	public int getIdAlumno() {
		return idAlumno;
	}
	public void setIdAlumno(int idAlumno) {
		this.idAlumno = idAlumno;
	}
	public int getParcial1() {
		return Parcial1;
	}
	public void setParcial1(int parcial1) {
		Parcial1 = parcial1;
	}
	public int getParcial2() {
		return Parcial2;
	}
	public void setParcial2(int parcial2) {
		Parcial2 = parcial2;
	}
	public int getRecuperatorio1() {
		return Recuperatorio1;
	}
	public void setRecuperatorio1(int recuperatorio1) {
		Recuperatorio1 = recuperatorio1;
	}
	public int getRecuperatorio2() {
		return Recuperatorio2;
	}
	public void setRecuperatorio2(int recuperatorio1) {
		Recuperatorio2 = recuperatorio1;
	}
	

}
