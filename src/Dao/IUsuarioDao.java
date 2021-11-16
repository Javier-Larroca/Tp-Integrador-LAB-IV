package Dao;

public interface IUsuarioDao {
	public int obtenerId(String mail, String password);
	public int obtenerTipoUsuario(int id);
}
