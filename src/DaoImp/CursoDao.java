package DaoImp;

import java.util.ArrayList;

import Dao.ICursoDao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Dominio.Curso;
import Dominio.Docente;
import Dominio.Materia;

public class CursoDao implements ICursoDao {
	
	public String agregar = "Insert into cursos(IdMateria, Semestre, Anio, IdDocente) values (?, ?, ?, ?)";
	public String listar = "select c.id, c.Semestre, c.Anio, m.id, m.descripcion, Nombre, Apellido from cursos c " + 
			" inner join materias m on m.id = c.IdMateria " + 
			" inner join docentes d on d.id = c.IdDocente ";
	public String listarxDocente = "select c.id, c.Semestre, c.Anio, m.id, m.descripcion, Nombre, Apellido from cursos c " + 
			" inner join materias m on m.id = c.IdMateria " + 
			" inner join docentes d on d.id = c.IdDocente "+ 
			" where d.id = c.IdDocente ";
	public String registrarAlumnos = "Insert into AlumnosxCurso(IdCurso,IdAlumno) values(?,?)";
	
	public boolean agregar(Curso curso)
	{
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean cursoAgregado = false;
		
		try
		{
			statement = conexion.prepareStatement(agregar);
			
			statement.setInt(1, curso.getMateria().getId());
			statement.setInt(2, curso.getSemestre());
			statement.setInt(3, curso.getAnio());
			statement.setInt(4, curso.getDocente().getId());
			
			if(statement.executeUpdate() > 0)
			{
				conexion.commit();
				cursoAgregado = true;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		/*finally {
			try {
				cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}*/
		
		return cursoAgregado;
	}  
	
	public ArrayList<Curso> listar()
	{
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		ResultSet rs;
		
		ArrayList<Curso> lista = new ArrayList<Curso>();

		try{

			statement = conexion.prepareStatement(listar);
			rs = statement.executeQuery();
			
			while(rs.next()){
				
				Curso curso = new Curso();
				curso.setId(rs.getInt("c.id"));
				curso.setAnio(rs.getInt("c.Semestre"));
				curso.setAnio(rs.getInt("c.Anio"));
				curso.setMateria(new Materia(rs.getInt("m.id"), rs.getString("m.descripcion"))); //Constructor de Materias
				curso.setDocente(new Docente(rs.getString("Nombre"), rs.getString("Apellido"))); //Constructor de Docente
				
				lista.add(curso);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		/*finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}*/
		
		return lista;
	}
	
	public ArrayList<Curso> listadoPorDocente(int id)
	{
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		ResultSet rs;
		
		ArrayList<Curso> lista = new ArrayList<Curso>();

		try{

			statement = conexion.prepareStatement(listarxDocente);
			rs = statement.executeQuery();
			
			while(rs.next()){
				
				Curso curso = new Curso();
				curso.setId(rs.getInt("c.id"));
				curso.setAnio(rs.getInt("c.Semestre"));
				curso.setAnio(rs.getInt("c.Anio"));
				curso.setMateria(new Materia(rs.getInt("m.id"), rs.getString("m.descripcion"))); //Constructor de Materias
				curso.setDocente(new Docente(rs.getString("Nombre"), rs.getString("Apellido"))); //Constructor de Docente
				
				lista.add(curso);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		/*finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}*/
		
		return lista;
	}
	
	public boolean agregarAlumnos(int idCurso, int idAlumno) {
		
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean cursoAgregado = false;
		
		try
		{
			statement = conexion.prepareStatement(registrarAlumnos);
			
			statement.setInt(1, idCurso);
			statement.setInt(2, idAlumno);
			
			if(statement.executeUpdate() > 0)
			{
				conexion.commit();
				cursoAgregado = true;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		/*finally {
			try {
				cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}*/
		
		return cursoAgregado;
		

		
	}
}
