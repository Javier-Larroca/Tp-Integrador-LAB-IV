package NegocioImp;

import java.util.ArrayList;
import java.util.List;

import Dao.IDocenteDao;
import DaoImp.DocenteDao;
import Dominio.Docente;
import Negocio.IDocenteNegocio;

public class DocenteNegocio implements IDocenteNegocio{

	IDocenteDao datos = new DocenteDao();
	
	@Override
	public boolean agregar(Docente docente) {
		
		return datos.agregar(docente);
	}

	@Override
	public boolean eliminar(int id) {
		
		return datos.eliminar(id);
		
	}

	@Override
	public boolean modificar(Docente docente) {
		
		return datos.modificar(docente);
	}

	@Override
	public boolean existe(String dni) {
		// TODO Auto-generated method stub
		return datos.existe(dni);
	}

	@Override
	public ArrayList<Docente> listar() {
		// TODO Auto-generated method stub
		return datos.listar();
	}

	
}
