package NegocioImp;

import java.util.ArrayList;
import java.util.List;

import DaoImp.AlumnoDao;
import Dominio.Alumno;
import Negocio.IAlumnoNegocio;

public class AlumnoNegocio implements IAlumnoNegocio {
	
	AlumnoDao datos = new AlumnoDao();
	
	public AlumnoNegocio (){
		
	}

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
	public ArrayList<Alumno> listar() {
		return datos.listar();
	}

	@Override
	public int AlumnoExiste(int Legajo, String Mail, String Dni) {
		// TODO Auto-generated method stub
		return datos.AlumnoExiste(Legajo, Mail, Dni);
	}


}
