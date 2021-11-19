package Dao;

import java.util.ArrayList;

import Dominio.AlumnoxCurso;
import Dominio.Curso;

public interface ICursoDao {
	
	public boolean agregar(Curso curso);
	
	public ArrayList<Curso> listar();
	
	public ArrayList<Curso> listadoPorDocente(int id);
	
	public ArrayList<AlumnoxCurso> listarAlumnosxCurso(int idCurso);
	
	public boolean cargarNotas(AlumnoxCurso modificado);

}
