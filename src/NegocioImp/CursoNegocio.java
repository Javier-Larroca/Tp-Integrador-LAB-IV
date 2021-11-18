package NegocioImp;

import java.util.ArrayList;

import DaoImp.CursoDao;
import Dominio.AlumnoxCurso;
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
		ArrayList<AlumnoxCurso> listaBase = new ArrayList<AlumnoxCurso>();
		
		
		//CICLO QUE AGREGA NUEVOS ALUMNOS
		for(int x = 0; x < numeros.length; x++) {
			try {
				//HABRIA QUE PREGUNTAR SI NO EXISTE Y AGREGAR
				if(!cursoDao.existeAlumnoxCurso(idCurso, Integer.parseInt(numeros[x]))) {
					cursoDao.agregarAlumnos(idCurso, Integer.parseInt(numeros[x]));					
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		listaBase = cursoDao.listarAlumnosxCurso(idCurso);
		//CICLO QUE ELIMINA ALUMNOS
			for(AlumnoxCurso item :listaBase) {
				boolean bandera = true;
				
				for(int i = 1; i < numeros.length; i++) {
					if(item.getIdAlumno() == Integer.parseInt(numeros[i])) {
						bandera = false;
					}
				}
				
				if(bandera) {
					cursoDao.eliminarAlumnoCurso(item.getIdCurso(), item.getIdAlumno());
				}
			}
		
		return true;
	}

	@Override
	public ArrayList<AlumnoxCurso> listarAlumnosxCurso(int idCurso) {
		// TODO Auto-generated method stub
		return datos.listarAlumnosxCurso(idCurso);
	}
	
}
