package Negocio;

import java.util.ArrayList;
import java.util.List;

import Dominio.Curso;
import Dominio.Docente;

public interface IDocenteNegocio {
	public boolean agregar(Docente docente);
	public boolean eliminar(int id);
	public boolean modificar(Docente docente);
	public boolean existe(String dni);
	public ArrayList<Docente> listar();
	public ArrayList<Curso> listaCursoDocente(int id);
}
