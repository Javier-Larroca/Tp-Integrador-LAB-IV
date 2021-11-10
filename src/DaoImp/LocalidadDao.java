package DaoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Dominio.Localidad;

public class LocalidadDao implements ILocalidadDao {
	
	private static final String listar = "SELECT * FROM localidades";
	
	@Override
	public List<Localidad> listar() {
		PreparedStatement statement;
		ResultSet resultado;
		ArrayList<Localidad> listaDeLocalidades = new ArrayList<Localidad>();
		Connection conexion = Conexion.getConexion().getSQLConexion();
		
		try 
		{
			statement = conexion.prepareStatement(listar);
			resultado = statement.executeQuery();
			while (resultado.next()) {
				listaDeLocalidades.add(parseLocalidad(resultado));
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
		return listaDeLocalidades;
	}
	
	private Localidad parseLocalidad(ResultSet resultSet) throws SQLException
	{
		String descripcion = resultSet.getString("Descripcion");
		return new Localidad(descripcion);
	}
}