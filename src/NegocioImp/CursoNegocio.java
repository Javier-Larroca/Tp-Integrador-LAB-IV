package NegocioImp;

import java.util.ArrayList;

import DaoImp.CursoDao;
import Dominio.Curso;
import Negocio.ICursoNegocio;

public class CursoNegocio implements ICursoNegocio {
	
	CursoDao datos = new CursoDao();

	@Override
	public boolean agregar(Curso curso) {
		
		return datos.agregar(curso);
	}

	@Override
	public ArrayList<Curso> listar() {
		
		return datos.listar();
	}
	
	
	
}
