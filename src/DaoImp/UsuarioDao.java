package DaoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Dao.IUsuarioDao;
import Dominio.Administrador;
import Dominio.Docente;
import Dominio.Localidad;
import Dominio.Nacionalidad;

public class UsuarioDao implements IUsuarioDao{
	
	private static final String agregar = "INSERT INTO USUARIOS (Mail, Contrasena, Tipo) VALUES(?, ?, ?)";
	private static final String obtenerTipoUsuario = "SELECT Tipo FROM USUARIOS WHERE ID = ?";
	private static final String obtenerIdUsuario = "SELECT Id FROM USUARIOS WHERE MAIL = ? AND CONTRASENA = ?";
	private static final String obtenerAdministardor = "SELECT * FROM USUARIOS WHERE ID = ?";
	private static final String obtenerDocente = "SELECT DOC.*, U.MAIL, U.CONTRASENA, LOC.DESCRIPCION DESCLOCALIDAD, NAC.DESCRIPCION DESCNACIONALIDAD "
												+ "FROM DOCENTES DOC INNER JOIN USUARIOS U ON U.ID = DOC.ID "
												+ "INNER JOIN LOCALIDADES LOC ON LOC.ID = DOC.IDLOCALIDAD "
												+ "INNER JOIN NACIONALIDADES NAC ON NAC.ID = DOC.IDNACIONALIDAD WHERE DOC.ID = ? AND DOC.ESTADO = 1";
	
	@Override
	public int obtenerId(String mail, String password) {
		PreparedStatement statement;
		ResultSet resultado;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		int id = 0;
		try 
		{
			statement = conexion.prepareStatement(obtenerIdUsuario);
			statement.setString(1, mail);
			statement.setString(2, password);
			resultado = statement.executeQuery();
			System.out.println(password);
			if(resultado.next()) id = resultado.getInt("Id");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return id;
	}

	@Override
	public int obtenerTipoUsuario(int id) {
		PreparedStatement statement;
		ResultSet resultado;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		int tipoUsuario = 0;
		
		try 
		{
			statement = conexion.prepareStatement(obtenerTipoUsuario);
			statement.setInt(1, id);
			resultado = statement.executeQuery();
			
			if(resultado.next()) tipoUsuario = resultado.getInt("Tipo");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return tipoUsuario;
	}

	@Override
	public boolean agregar(Docente usuario) {
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean usuarioAgregado = false;
		try
		{
			statement = conexion.prepareStatement(agregar);
			statement.setString(1, usuario.getMail());
			statement.setString(2, usuario.getContrasenia());
			statement.setInt(3, usuario.getTipoUsuario());
			
			if(statement.executeUpdate() > 0)
			{
				conexion.commit();
				usuarioAgregado = true;
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
		
		return usuarioAgregado;
	}

	@Override
	public Administrador obtenerAdministrador(int id) {
		PreparedStatement statement;
		ResultSet resultado;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		
		try 
		{
			statement = conexion.prepareStatement(obtenerAdministardor);
			statement.setInt(1, id);
			resultado = statement.executeQuery();
			if(resultado.next()) return parseAdministrador(resultado);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public Docente obtenerDocente(int id) {
		PreparedStatement statement;
		ResultSet resultado;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		
		try 
		{
			statement = conexion.prepareStatement(obtenerDocente);
			statement.setInt(1, id);
			resultado = statement.executeQuery();
			if(resultado.next()) return parseDocente(resultado);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private Administrador parseAdministrador(ResultSet resultSet) throws SQLException {
		int id = resultSet.getInt("ID");
		int tipoUsuario = resultSet.getInt("Tipo");
		String mail = resultSet.getString("Mail");
		String contraseña = resultSet.getString("Contrasena");
		return new Administrador(id, tipoUsuario, mail, contraseña);
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
}
