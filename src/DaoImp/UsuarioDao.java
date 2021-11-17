package DaoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Dao.IUsuarioDao;
import Dominio.Docente;

public class UsuarioDao implements IUsuarioDao{
	
	private static final String agregar = "INSERT INTO USUARIOS (Mail, Contrasena, Tipo) VALUES(?, ?, ?)";
	private static final String obtenerTipoUsuario = "SELECT Tipo FROM USUARIOS WHERE ID = ?";
	private static final String obtenerIdUsuario = "SELECT Id FROM USUARIOS WHERE MAIL = ? AND CONTRASENA = ?";
	
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
			
			if(resultado.next()) id = resultado.getInt("Id");
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
		/**finally {
			try {
				conexion.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}**/
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
		/** finally {
			try {
				conexion.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} **/
		
		return usuarioAgregado;
	}
}
