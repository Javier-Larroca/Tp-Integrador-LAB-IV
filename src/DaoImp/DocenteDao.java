package DaoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Dao.IDocenteDao;
import Dominio.Curso;
import Dominio.Docente;
import Dominio.Localidad;
import Dominio.Materia;
import Dominio.Nacionalidad;

public class DocenteDao implements IDocenteDao{

	private static final String agregar = "INSERT INTO DOCENTES VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, DEFAULT)";
	private static final String eliminar = "UPDATE DOCENTES SET ESTADO = 0 WHERE ID = ?";
	private static final String modificar = "UPDATE DOCENTES SET NOMBRE = ?, APELLIDO = ?, DNI = ?, LEGAJO = ?, FechaNac = ?, "
											+ "IDLOCALIDAD = ?, IDNACIONALIDAD = ?, TELEFONO = ?, DIRECCION = ? WHERE ID = ?";
	private static final String listar = "SELECT DOC.*, U.MAIL, U.CONTRASENA, LOC.DESCRIPCION DESCLOCALIDAD, NAC.DESCRIPCION DESCNACIONALIDAD "
										+ "FROM DOCENTES DOC INNER JOIN USUARIOS U ON U.ID = DOC.ID "
										+ "INNER JOIN LOCALIDADES LOC ON LOC.ID = DOC.IDLOCALIDAD "
										+ "INNER JOIN NACIONALIDADES NAC ON NAC.ID = DOC.IDNACIONALIDAD WHERE ESTADO = 1";
	private static final String existeDocente = "SELECT ID FROM DOCENTES WHERE DNI = ?";
	private static final String listaCursosDocente = "Select * FROM Cursos C inner join Materias M on C.IdMateria = M.Id WHERE IdDocente = ?";
	private static final String DOCENTESDNI = "Select * from DOCENTES Where Dni = ?";
	private static final String DOCENTESLegajo = "Select * from DOCENTES Where Legajo = ?";
	private static final String DOCENTESMail = "Select * from DOCENTES Where Mail = ?";
	
	@Override
	public boolean agregar(Docente docente) {
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean docenteAgregado = false;
		try
		{
			statement = conexion.prepareStatement(agregar);
			statement.setInt(1, docente.getId());
			statement.setString(2, docente.getNombre());
			statement.setString(3, docente.getApellido());
			statement.setString(4, docente.getDni());
			statement.setInt(5, docente.getLegajo());
			statement.setString(6, docente.getFechaNacimiento());
			statement.setInt(7, docente.getLocalidad().getId());
			statement.setInt(8, docente.getNacionalidad().getId());
			statement.setString(9, docente.getTelefono());
			statement.setString(10, docente.getDireccion());
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
		/** finally {
			try {
				conexion.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} **/
		
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
			statement.setInt(1, id);
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
		/**finally {
			try {
				conexion.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}**/
		
		return eliminaDocente;
	}

	@Override
	public boolean modificar(Docente docente) {
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean modificaDocente = false;
		try {
			statement = conexion.prepareStatement(modificar);
			statement.setString(1, docente.getNombre());
			statement.setString(2, docente.getApellido());
			statement.setString(3, docente.getDni());
			statement.setInt(4, docente.getLegajo());
			statement.setString(5, docente.getFechaNacimiento());
			statement.setInt(6, docente.getLocalidad().getId());
			statement.setInt(7, docente.getNacionalidad().getId());
			statement.setString(8, docente.getTelefono());
			statement.setString(9, docente.getDireccion());
			statement.setInt(10, docente.getId());
			
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
		}
		/**finally {
			try {
				conexion.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}**/
		
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
			statement = conexion.prepareStatement(existeDocente);
			statement.setString(1, dni);
			resultado = statement.executeQuery();
			
			if(resultado.next()) existe = true;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		/**finally {
			try {
				conexion.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}**/
		return existe;
	}

	@Override
	public ArrayList<Docente> listar() {
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
		/*finally {
			try {
				conexion.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}*/
		return listaDocentes;
	}
	
	@Override
	public Docente obtenerDocente(int id) {
		PreparedStatement statement;
		ResultSet resultado;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		
		try 
		{
			statement = conexion.prepareStatement(listar + " AND ID = ?");
			statement.setInt(1, id);
			resultado = statement.executeQuery();
			
			if(resultado.next()) return parseDocente(resultado);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return null;
	}
	
	private Docente parseDocente(ResultSet resultSet) throws SQLException
	{
		int id = resultSet.getInt("Id");
		String nombre = resultSet.getString("Nombre");
		String apellido = resultSet.getString("Apellido");
		String dni = resultSet.getString("Dni");
		String contrasenia = resultSet.getString("Contrasena");
		int legajo = resultSet.getInt("Legajo");
		String fechaNac = resultSet.getString("FechaNac");
		Localidad loc = new Localidad(resultSet.getInt("IdLocalidad"), resultSet.getString("DescLocalidad"));
		Nacionalidad nac = new Nacionalidad(resultSet.getInt("IdNacionalidad"), resultSet.getString("DescNacionalidad"));
		String telefono = resultSet.getString("Telefono");
		String direccion = resultSet.getString("Direccion");
		String mail = resultSet.getString("Mail");
		return new Docente(id,mail, legajo, dni, nombre, apellido, direccion, fechaNac, telefono, nac, loc,contrasenia);
	}

	@Override
	public ArrayList<Curso> listaCursoDocente(int id) {
		PreparedStatement statement;
		ResultSet resultado;
		ArrayList<Curso> listaCursosxDocentes = new ArrayList<Curso>();
		Connection conexion = Conexion.getConexion().getSQLConexion();
		
		try 
		{
			statement = conexion.prepareStatement(listaCursosDocente);
			statement.setInt(1, id);
			resultado = statement.executeQuery();
			while (resultado.next()) {
				listaCursosxDocentes.add(parseCurso(resultado));
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
		return listaCursosxDocentes;
	}

	public Curso parseCurso(ResultSet resultSet) throws SQLException {
		int id = resultSet.getInt("Id");
		Materia materia = new Materia();
		materia.setId(resultSet.getInt("IdMateria"));
		materia.setDescripcion(resultSet.getString("descripcion"));
		int semestre = resultSet.getInt("Semestre");
		int anio = resultSet.getInt("Anio");
		Docente docente = new Docente();
		docente.setId(resultSet.getInt("IdDocente"));
		return new Curso(id,semestre,materia,anio,docente);
	
	}

	@Override
	public int DocenteExiste(int Legajo, String Mail, String Dni) {
		PreparedStatement statement;
		ResultSet resultado;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		
		try 
		{
			statement = conexion.prepareStatement(DOCENTESDNI);
			statement.setString(1, Dni);
			resultado = statement.executeQuery();
			if (resultado.next()) {
				return 1;
		}
			statement = conexion.prepareStatement(DOCENTESLegajo);
			statement.setInt(1, Legajo);
			resultado = statement.executeQuery();
			if (resultado.next()) {
				return 2;
		}
			statement = conexion.prepareStatement(DOCENTESMail);
			statement.setString(1, Mail);
			resultado = statement.executeQuery();
			if (resultado.next()) {
				return 3;
		}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return 0;
	}

}
