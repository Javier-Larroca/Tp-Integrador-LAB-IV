package DaoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Dao.IAlumnoDao;
import Dominio.Alumno;
import Dominio.Nacionalidad;
import Dominio.Provincia;

public class AlumnoDao implements IAlumnoDao {
	
	public AlumnoDao() {
		
	}
	
	private static final String agregar = "insert into alumnos(Mail, Nombre, Apellido, Dni, Legajo, FechaNac, IdProvincia, IdNacionalidad, Telefono, Direccion) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	private static final String eliminar = "UPDATE alumnos SET Estado = false WHERE Id = ?";
	private static final String modificar = "UPDATE alumnos SET Nombre = ?, Apellido = ?, Mail = ?, Dni = ?, Legajo = ?,  FechaNac = ?, IdProvincia = ?, IdNacionalidad = ?, Telefono = ?, Direccion = ?, Estado = ? WHERE Id = ?";
	private static final String listar = "SELECT * FROM alumnos where Estado = 1";
	
	@Override
	public boolean agregar(Alumno alumno) {
		
		System.out.println(alumno.getNacionalidad().getId());
		System.out.println(alumno.getProvincia().getId());
		
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean agregaAlumno = false;
		try
		{
			statement = conexion.prepareStatement(agregar);
			statement.setString(1, alumno.getMail());
			statement.setString(2, alumno.getNombre());
			statement.setString(3, alumno.getApellido());
			statement.setString(4, alumno.getDni());
			statement.setInt(5, alumno.getLegajo());
			statement.setString(6, alumno.getFechaNacimiento());
			statement.setInt(7, alumno.getProvincia().getId());
			statement.setInt(8, alumno.getNacionalidad().getId());
			statement.setString(9, alumno.getTelefono());
			statement.setString(10, alumno.getDireccion());
			
			
			if(statement.executeUpdate() > 0)
			{
				conexion.commit();
				agregaAlumno = true;
			}
			
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
			try {
				conexion.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		/*finally {
			try {
				conexion.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}*/
		
		return agregaAlumno;
	}
	
	@Override
	public boolean eliminar(int id) {
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean eliminaAlumno = false;
		
		try 
		{
			statement = conexion.prepareStatement(eliminar);
			statement.setInt(1, id);
			if(statement.executeUpdate() > 0) {
				conexion.commit();
				eliminaAlumno = true;
			}
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
			try {
				conexion.rollback();
			}catch(SQLException e2)
			{
				e2.printStackTrace();
			}
		}
		/*finally {
			try {
				conexion.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}*/
		return eliminaAlumno;
	}
	
	@Override
	public boolean modificar(Alumno alumno) {
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean modificaAlumno = false;
		try {
			statement = conexion.prepareStatement(modificar);
			statement.setString(2, alumno.getNombre());
			statement.setString(3, alumno.getApellido());
			statement.setString(1, alumno.getMail());
			statement.setString(4, alumno.getDni());
			statement.setInt(5, alumno.getLegajo());
			statement.setString(6, alumno.getFechaNacimiento());
			statement.setInt(7, alumno.getProvincia().getId());
			statement.setInt(8, alumno.getNacionalidad().getId());
			statement.setString(9, alumno.getTelefono());
			statement.setString(10, alumno.getDireccion());
			statement.setBoolean(11, alumno.getEstado());
			
			if (statement.executeUpdate() > 0) {
				conexion.commit();
				modificaAlumno = true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conexion.rollback();
			}catch(SQLException e2){
				e2.printStackTrace();
			}
		}finally {
			try {
				conexion.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return modificaAlumno;
	}
	
	@Override
	public ArrayList<Alumno> listar() {
		PreparedStatement statement;
		ResultSet resultado;
		ArrayList<Alumno> listaDeAlumnos = new ArrayList<Alumno>();
		Connection conexion = Conexion.getConexion().getSQLConexion();
		
		try 
		{
			statement = conexion.prepareStatement(listar);
			resultado = statement.executeQuery();
			while (resultado.next()) {
				listaDeAlumnos.add(parseAlumno(resultado));
		}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		/*finally {
			try {
				conexion.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}*/
		return listaDeAlumnos;
	}
	
	private Alumno parseAlumno(ResultSet resultSet) throws SQLException
	{
		int id = resultSet.getInt("Id");
		String dni = resultSet.getString("Dni");
		String nombre = resultSet.getString("Nombre");
		String apellido = resultSet.getString("Apellido");
		String mail = resultSet.getString("Mail");
		String direccion = resultSet.getString("Direccion");
		String nacimiento = resultSet.getString("FechaNac");
		int legajo = resultSet.getInt("Legajo");
		String telefono = resultSet.getString("Telefono");
		Nacionalidad nac = new Nacionalidad( resultSet.getString("IdNacionalidad"));
		Provincia prov = new Provincia( resultSet.getString("IdProvincia"));
		
		return new Alumno(id,prov, mail, legajo, dni, nombre, apellido, direccion,
				nacimiento, telefono, nac);
	}

}
