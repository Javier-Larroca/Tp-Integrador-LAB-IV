package NegocioImp;

import java.util.List;

import DaoImp.AlumnoDao;
import Dominio.Alumno;
import Negocio.IAlumnoNegocio;

public class AlumnoNegocio implements IAlumnoNegocio {
	
	AlumnoDao datos = new AlumnoDao();

	@Override
	public boolean agregar(Alumno alumno) {
		return datos.agregar(alumno);
	}

	@Override
	public boolean eliminar(int id) {
		return datos.eliminar(id);
	}

	@Override
	public boolean modificar(Alumno alumno) {
		return datos.modificar(alumno);
	}

	@Override
	public List<Alumno> listar() {
		return datos.listar();
	}


}
