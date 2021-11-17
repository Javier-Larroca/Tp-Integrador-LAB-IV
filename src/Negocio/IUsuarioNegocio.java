package Negocio;

import Dominio.Docente;

public interface IUsuarioNegocio {
	public int obtenerUsuario(String mail, String contrasenia);
	public int obtenerTipoUsuario(int id);
	public boolean agregarUsuario(Docente docente);
}
