package NegocioImp;

import java.util.ArrayList;

import DaoImp.ProvinciaDao;
import Dominio.Provincia;
import Negocio.IProvinciaNegocio;

public class ProvinciaNegocio  implements IProvinciaNegocio{

	@Override
	public ArrayList<Provincia> listar() {
		// TODO Auto-generated method stub
		return datos.listar();
	}
	
	ProvinciaDao datos = new ProvinciaDao();
	
}
