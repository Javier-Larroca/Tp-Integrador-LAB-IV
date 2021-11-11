package NegocioImp;

import java.util.ArrayList;

import DaoImp.NacionalidadDao;
import Dominio.Nacionalidad;
import Negocio.INacionalidadNegocio;

public class NacionalidadNegocio  implements INacionalidadNegocio{

	@Override
	public ArrayList<Nacionalidad> listar() {
		// TODO Auto-generated method stub
		return datos.listar();
	}
	
	NacionalidadDao datos = new NacionalidadDao();
	
}
