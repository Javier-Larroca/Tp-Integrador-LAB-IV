package Dominio;

public class Nacionalidad {
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
	
	public Nacionalidad(String descripcion){
		this.descripcion = descripcion;
	}
	
	public Nacionalidad(){

	}
	
	public Nacionalidad(int id, String descripcion){
		this.descripcion = descripcion;
		this.id = id;
	}
}
