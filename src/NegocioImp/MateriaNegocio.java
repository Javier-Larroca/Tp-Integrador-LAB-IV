package NegocioImp;

import java.util.ArrayList;

import DaoImp.MateriaDao;
import Dominio.Materia;
import Negocio.IMateriaNegocio;

public class MateriaNegocio  implements IMateriaNegocio{

	@Override
	public ArrayList<Materia> listar() {
		// TODO Auto-generated method stub
		return datos.listar();
	}
	
	MateriaDao datos = new MateriaDao();
	
}
