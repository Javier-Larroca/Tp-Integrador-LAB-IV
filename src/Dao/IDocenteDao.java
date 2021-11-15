package Dao;

import java.util.List;
import Dominio.Docente;

public interface IDocenteDao {
	public boolean agregar(Docente docente);
	public boolean eliminar(int id);
	public boolean modificar(Docente docente);
	public boolean existe(String dni);
	public List<Docente> listar();
}
