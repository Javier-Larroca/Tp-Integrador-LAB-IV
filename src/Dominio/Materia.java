package Dominio;

public class Materia {
	private int id;
	private String descripcion;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	public Materia(String descripcion){
		this.descripcion = descripcion;
	}
	
	public Materia(int id, String descripcion){
		this.descripcion = descripcion;
		this.id = id;
	}
	
	public Materia(){

	}
}
