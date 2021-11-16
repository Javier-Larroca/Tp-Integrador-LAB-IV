package Negocio;

import java.util.ArrayList;

import Dominio.Curso;

public interface ICursoNegocio {
	
	public boolean agregar(Curso curso);
	
	public ArrayList<Curso> listar();
	
	public ArrayList<Curso> listadoPorDocente(int id);
 
}
