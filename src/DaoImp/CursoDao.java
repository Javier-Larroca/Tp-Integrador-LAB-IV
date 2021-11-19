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

import Dominio.AlumnoxCurso;
import Dominio.Curso;
import Dominio.Docente;
import Dominio.Materia;
import jdk.nashorn.internal.runtime.Undefined;

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
	public String listarAlumnosxCurso = "Select AC.IdCurso, AC.IdAlumno, AC.Parcial1, AC.Parcial2, AC.Recuperatorio1, AC.Recuperatorio2, AC.Estado,A.Nombre, A.Apellido, A.Legajo From alumnosxcurso AC inner join Alumnos A on AC.IdAlumno = A.Id WHERE AC.IdCurso = ?";
	public String alumnoxCursoExite = "Select * From AlumnosxCurso WHERE IdAlumno = ? AND IdCurso = ?";
	public String eliminarAlumnoCurso = "DELETE FROM AlumnosxCurso WHERE IdCurso = ? AND IdAlumno = ?";
	public String cargarNota = "UPDATE AlumnosxCurso SET Parcial1 = ?, Parcial2 = ?, Recuperatorio1 = ?, Recuperatorio2 = ?, Estado = ? WHERE IdAlumno = ? AND IdCurso = ? ";
	
	
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
				curso.setSemestre(rs.getInt("c.Semestre"));
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

	public ArrayList<AlumnoxCurso> listarAlumnosxCurso(int idCurso)
	{
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		ResultSet rs;
		
		ArrayList<AlumnoxCurso> lista = new ArrayList<AlumnoxCurso>();

		try{

			statement = conexion.prepareStatement(listarAlumnosxCurso);
			statement.setInt(1, idCurso);
			rs = statement.executeQuery();
			
			while(rs.next()){
				
				AlumnoxCurso alumnoXcurso = new AlumnoxCurso();
				alumnoXcurso.setIdCurso(rs.getInt("AC.IdCurso"));
				alumnoXcurso.setIdAlumno(rs.getInt("AC.IdAlumno"));
				alumnoXcurso.setParcial1(rs.getInt("AC.Parcial1"));
				alumnoXcurso.setParcial2(rs.getInt("AC.Parcial2"));
				alumnoXcurso.setRecuperatorio1(rs.getInt("AC.Recuperatorio1")); 
				alumnoXcurso.setRecuperatorio2(rs.getInt("AC.Recuperatorio2"));
				alumnoXcurso.setNombre(rs.getString("A.Nombre"));
				alumnoXcurso.setApellido(rs.getString("A.Apellido"));
				alumnoXcurso.setLegajo(rs.getString("A.Legajo"));
				alumnoXcurso.setEstado(rs.getBoolean("AC.Estado"));
				
				lista.add(alumnoXcurso);
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

	public boolean existeAlumnoxCurso(int idCurso, int idAlumno) {
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		ResultSet rs;
		
		boolean existe = false;

		try{

			statement = conexion.prepareStatement(alumnoxCursoExite);
			statement.setInt(1, idAlumno);
			statement.setInt(2, idCurso);
			rs = statement.executeQuery();
			
			while(rs.next()){
				existe = true;
				return existe;
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
		return existe;
	}

	public boolean eliminarAlumnoCurso(int idCurso, int idAlumno) {
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean alumnoEliminado = false;
		
		try
		{
			statement = conexion.prepareStatement(eliminarAlumnoCurso);
			
			statement.setInt(1, idCurso);
			statement.setInt(2, idAlumno);

			if(statement.executeUpdate() > 0)
			{
				conexion.commit();
				alumnoEliminado = true;
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
		
		return alumnoEliminado;
	}

	@Override
	public boolean cargarNotas(AlumnoxCurso modificado) {
		// TODO Auto-generated method stub
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean notaCargada = false;
		
		try
		{
			statement = conexion.prepareStatement(cargarNota);
			
			statement.setInt(1, modificado.getParcial1());
			statement.setInt(2, modificado.getParcial2());
			statement.setInt(3, modificado.getRecuperatorio1());
			statement.setInt(4, modificado.getRecuperatorio2());
			statement.setBoolean(5, modificado.isEstado());
			statement.setInt(6, modificado.getIdAlumno());
			statement.setInt(7, modificado.getIdCurso());

			
			if(statement.executeUpdate() > 0)
			{
				conexion.commit();
				notaCargada = true;
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
		
		return notaCargada;
	}


}
