package Negocio;

import java.util.List;

import Dominio.Alumno;


public interface IAlumnoNegocio {
	
	public boolean agregar(Alumno alumno);
	public boolean eliminar(int id);
	public boolean modificar(Alumno alumno);
	public List<Alumno> listar();	
	public int AlumnoExiste(int Legajo, String Mail, String Dni);
}
