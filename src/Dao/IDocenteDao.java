package Dao;

import java.util.ArrayList;
import java.util.List;

import Dominio.Curso;
import Dominio.Docente;

public interface IDocenteDao {
	public boolean agregar(Docente docente);
	public boolean eliminar(int id);
	public boolean modificar(Docente docente);
	public boolean existe(String dni);
	public Docente obtenerDocente(int id);
	public ArrayList<Docente> listar();
	public ArrayList<Curso> listaCursoDocente(int id);
	public int DocenteExiste(int Legajo, String Mail, String Dni);
}
