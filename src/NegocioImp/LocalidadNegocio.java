package NegocioImp;

import java.util.ArrayList;

import DaoImp.LocalidadDao;
import Dominio.Localidad;
import Negocio.ILocalidadNegocio;

public class LocalidadNegocio  implements ILocalidadNegocio{

	@Override
	public ArrayList<Localidad> listar() {
		// TODO Auto-generated method stub
		return datos.listar();
	}
	
	LocalidadDao datos = new LocalidadDao();
	
}
