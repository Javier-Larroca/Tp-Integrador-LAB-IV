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

	@Override
	public ArrayList<Curso> listadoPorDocente(int id) {
		
		return datos.listadoPorDocente(id);
	}
	
	public boolean agregarAlumnos(String lista, int idCurso) {
		
		String[] numeros = lista.split("-");
		CursoDao cursoDao = new CursoDao();
		
		for(int x = 0; x < numeros.length; x++) {
			try {
				cursoDao.agregarAlumnos(idCurso, Integer.parseInt(numeros[x]));
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		return true;
	}
	
}
