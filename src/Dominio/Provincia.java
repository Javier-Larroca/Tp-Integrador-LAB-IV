package Dominio;

public class Provincia {
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
	
	public Provincia(String descripcion){
		this.descripcion = descripcion;
	}
	
	public Provincia(){

	}
	
	public Provincia(int id, String descripcion){
		this.descripcion = descripcion;
		this.id = id;
	}
}



