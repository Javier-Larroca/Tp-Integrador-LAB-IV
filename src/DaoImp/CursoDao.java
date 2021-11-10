package DaoImp;

import java.util.ArrayList;

import Dao.ICursoDao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Dominio.Curso;
import Dominio.Docente;
import Dominio.Materia;

public class CursoDao implements ICursoDao {
	private String host = "jdbc:mysql://localhost:3306/";
	private String user = "root";
	private String pass = "root";
	private String dbName = "DBTUP";
	
	public CursoDao ()
	{
		
	}
	
	public boolean agregar(Curso curso)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		boolean filas = false;
		Connection cn = null;
		try
		{
			cn = DriverManager.getConnection(host+dbName, user,pass);
			CallableStatement cst = cn.prepareCall("Insert into cursos(IdMateria, Semestre, Anio, IdDocente) values ('?, ?, ?, ?')");
			
			cst.setInt(1, curso.getMateria().getId());
			cst.setInt(2, curso.getSemestre());
			cst.setInt(3, curso.getAnio());
			cst.setInt(4, curso.getDocente().getId());
			
			filas = cst.execute();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally {
			try {
				cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return filas;
	}  
	
	public ArrayList<Curso> listar()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		String query = "select c.id, c.Semestre, c.Anio, m.id, m.descripcion, Nombre, Apellido from cursos c " + 
						" inner join materias m on m.id = c.IdMateria " + 
						" inner join docentes d on d.id = c.IdDocente ";
		
		ArrayList<Curso> lista = new ArrayList<Curso>();
		Connection conn = null;
		try{
			conn = DriverManager.getConnection(host + dbName, user, pass);
			Statement st = conn.createStatement();
			
			ResultSet rs = st.executeQuery(query);
			
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
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return lista;
	}
	
	public ArrayList<Curso> listadoPorDocente(int id)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		String query = "select c.id, c.Semestre, c.Anio, m.id, m.descripcion, Nombre, Apellido from cursos c " + 
						" inner join materias m on m.id = c.IdMateria " + 
						" inner join docentes d on d.id = c.IdDocente "+ 
						" where d.id = c.IdDocente ";
		
		ArrayList<Curso> lista = new ArrayList<Curso>();
		Connection conn = null;
		try{
			conn = DriverManager.getConnection(host + dbName, user, pass);
			Statement st = conn.createStatement();
			
			ResultSet rs = st.executeQuery(query);
			
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
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return lista;
	}
	
}
