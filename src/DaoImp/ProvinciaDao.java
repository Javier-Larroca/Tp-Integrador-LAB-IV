package DaoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Dao.IProvinciaDao;
import Dominio.Provincia;

public class ProvinciaDao implements IProvinciaDao {
	
	private static final String listar = "SELECT * FROM provincias";
	
	@Override
	public ArrayList<Provincia> listar() {
		PreparedStatement statement;
		ResultSet resultado;
		ArrayList<Provincia> listaDeProvincias = new ArrayList<Provincia>();
		Connection conexion = Conexion.getConexion().getSQLConexion();
		
		try 
		{
			statement = conexion.prepareStatement(listar);
			resultado = statement.executeQuery();
			while (resultado.next()) {
				listaDeProvincias.add(parseProvincia(resultado));
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
		return listaDeProvincias;
	}
	
	private Provincia parseProvincia(ResultSet resultSet) throws SQLException
	{
		int id = resultSet.getInt("Id");
		String descripcion = resultSet.getString("Descripcion");
		return new Provincia(id,descripcion);
	}
}
