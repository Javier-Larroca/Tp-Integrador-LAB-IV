package Dao;

import Dominio.Administrador;
import Dominio.Docente;

public interface IUsuarioDao {
	public int obtenerId(String mail, String password);
	public int obtenerTipoUsuario(int id);
	boolean agregar(Docente usuario);
	Administrador obtenerAdministrador(int id);
	Docente obtenerDocente(int id);
}
