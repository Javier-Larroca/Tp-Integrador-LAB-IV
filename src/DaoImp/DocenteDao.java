package DaoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Dao.IDocenteDao;
import Dominio.Docente;

public class DocenteDao implements IDocenteDao{

	private static final String agregar = "INSERT INTO DOCENTES VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	private static final String eliminar = "DELETE FROM DOCENTES WHERE ID = ?";
	private static final String modificar = "UPDATE DOCENTES SET NOMBRE = ?, APELLIDO = ?, DNI = ?, LEGAJO = ?, FechaNac = ?, "
											+ "IDLOCALIDAD = ?, IDNACIONALIDAD = ?, TELEFONO = ?, DIRECCION = ? WHERE ID = ?";
	private static final String listar = "SELECT * FROM personas";
	private static final String obtenerDocente = "SELECT ID FROM DOCENTES WHERE ID = ?";
	
	@Override
	public boolean agregar(Docente docente) {
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean docenteAgregado = false;
		try
		{
			statement = conexion.prepareStatement(agregar);
			//statement.setInt(1, docente.getDNI());
			//statement.setString(2, persona.getNombre());
			//statement.setString(3, persona.getApellido());
			if(statement.executeUpdate() > 0)
			{
				conexion.commit();
				docenteAgregado = true;
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
		finally {
			try {
				conexion.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return docenteAgregado;
	}

	@Override
	public boolean eliminar(int id) {
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean eliminaDocente = false;
		try 
		{
			statement = conexion.prepareStatement(eliminar);
			//statement.setInt(1, dni);
			if(statement.executeUpdate() > 0) {
				conexion.commit();
				eliminaDocente = true;
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
		finally {
			try {
				conexion.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return eliminaDocente;
	}

	@Override
	public boolean modificar(Docente docente) {
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean modificaDocente = false;
		try {
			statement = conexion.prepareStatement(modificar);
			//statement.setString(1, persona.getNombre());
			//statement.setString(2, persona.getApellido());
			//statement.setInt(3, persona.getDNI());
			
			if (statement.executeUpdate() > 0) {
				conexion.commit();
				modificaDocente = true;
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
		
		return modificaDocente;
	}

	@Override
	public boolean existe(String dni) {
		PreparedStatement statement;
		ResultSet resultado;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean existe = false;
		
		try 
		{
			statement = conexion.prepareStatement(obtenerDocente);
			//statement.setInt(1, dni);
			resultado = statement.executeQuery();
			
			if(resultado.next()) existe = true;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally {
			try {
				conexion.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return existe;
	}

	@Override
	public List<Docente> listar() {
		PreparedStatement statement;
		ResultSet resultado;
		ArrayList<Docente> listaDocentes = new ArrayList<Docente>();
		Connection conexion = Conexion.getConexion().getSQLConexion();
		
		try 
		{
			statement = conexion.prepareStatement(listar);
			resultado = statement.executeQuery();
			while (resultado.next()) {
				listaDocentes.add(parseDocente(resultado));
		}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
			try {
				conexion.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return listaDocentes;
	}
	
	private Docente parseDocente(ResultSet resultSet) throws SQLException
	{
		//int dni = resultSet.getInt("Dni");
		String nombre = resultSet.getString("Nombre");
		String apellido = resultSet.getString("Apellido");
		//return new Docente(dni, nombre, apellido);
		return new Docente(nombre,apellido);
	}

}
