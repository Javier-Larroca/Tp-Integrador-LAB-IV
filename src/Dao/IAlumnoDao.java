package Dao;

import java.util.List;

import Dominio.Alumno;


public interface IAlumnoDao {
	public boolean agregar(Alumno alumno);
	public boolean eliminar(int id);
	public boolean modificar(Alumno alumno);
	public List<Alumno> listar();	
}
