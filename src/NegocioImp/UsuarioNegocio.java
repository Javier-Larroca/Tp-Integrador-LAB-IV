package NegocioImp;

import Dao.IUsuarioDao;
import DaoImp.UsuarioDao;
import Negocio.IUsuarioNegocio;

public class UsuarioNegocio implements IUsuarioNegocio{

	private IUsuarioDao datos = new UsuarioDao();
	@Override
	public int obtenerUsuario(String mail, String contrasenia) {
		return datos.obtenerId(mail, contrasenia);
	}

	@Override
	public int obtenerTipoUsuario(int id) {
		return datos.obtenerTipoUsuario(id);
	}

}
