package Negocio;

import java.util.ArrayList;

import Dominio.AlumnoxCurso;
import Dominio.Curso;

public interface ICursoNegocio {
	
	public boolean agregar(Curso curso);
	
	public ArrayList<Curso> listar();
	
	public ArrayList<Curso> listadoPorDocente(int id);
	
	public ArrayList<AlumnoxCurso> listarAlumnosxCurso(int idCurso);
 
}
