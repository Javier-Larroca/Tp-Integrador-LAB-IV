package Dao;

import java.util.ArrayList;

import Dominio.Curso;

public interface ICursoDao {
	
	public boolean agregar(Curso curso);
	
	public ArrayList<Curso> listar();
	
	public ArrayList<Curso> listadoPorDocente(int id);

}
