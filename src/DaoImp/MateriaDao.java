package DaoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Dao.IMateriaDao;
import Dominio.Materia;

public class MateriaDao implements IMateriaDao {
	
	private static final String listar = "SELECT * FROM materias";
	
	@Override
	public ArrayList<Materia> listar() {
		PreparedStatement statement;
		ResultSet resultado;
		ArrayList<Materia> listaDeMaterias = new ArrayList<Materia>();
		Connection conexion = Conexion.getConexion().getSQLConexion();
		
		try 
		{
			statement = conexion.prepareStatement(listar);
			resultado = statement.executeQuery();
			while (resultado.next()) {
				listaDeMaterias.add(parseMateria(resultado));
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
		return listaDeMaterias;
	}
	
	private Materia parseMateria(ResultSet resultSet) throws SQLException
	{
		String descripcion = resultSet.getString("Descripcion");
		return new Materia(descripcion);
	}
}
