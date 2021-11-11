package DaoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Dao.INacionalidadDao;
import Dominio.Nacionalidad;

public class NacionalidadDao implements INacionalidadDao {
	
	private static final String listar = "SELECT * FROM nacionalidades";
	
	@Override
	public ArrayList<Nacionalidad> listar() {
		PreparedStatement statement;
		ResultSet resultado;
		ArrayList<Nacionalidad> listaDeNacionalidades = new ArrayList<Nacionalidad>();
		Connection conexion = Conexion.getConexion().getSQLConexion();
		
		try 
		{
			statement = conexion.prepareStatement(listar);
			resultado = statement.executeQuery();
			while (resultado.next()) {
				listaDeNacionalidades.add(parseNacionalidad(resultado));
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
		return listaDeNacionalidades;
	}
	
	private Nacionalidad parseNacionalidad(ResultSet resultSet) throws SQLException
	{
		String descripcion = resultSet.getString("Descripcion");
		return new Nacionalidad(descripcion);
	}
}
