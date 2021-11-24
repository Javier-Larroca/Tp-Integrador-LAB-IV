package NegocioImp;

import Dao.IUsuarioDao;
import DaoImp.UsuarioDao;
import Dominio.Administrador;
import Dominio.Docente;
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

	@Override
	public boolean agregarUsuario(Docente docente) {
		// TODO Auto-generated method stub
		return datos.agregar(docente);
	}

	@Override
	public Administrador obtenerAdministrador(int id) {
		// TODO Auto-generated method stub
		return datos.obtenerAdministrador(id);
	}

	@Override
	public Docente obtenerDocente(int id) {
		// TODO Auto-generated method stub
		return datos.obtenerDocente(id);
	}

}
