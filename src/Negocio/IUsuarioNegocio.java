package Negocio;

public interface IUsuarioNegocio {
	public int obtenerUsuario(String mail, String contrasenia);
	public int obtenerTipoUsuario(int id);
}
