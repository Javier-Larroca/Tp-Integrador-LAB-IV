package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dominio.Alumno;
import Dominio.Curso;
import Dominio.Docente;
import Dominio.Materia;
import NegocioImp.AlumnoNegocio;
import NegocioImp.CursoNegocio;
import NegocioImp.DocenteNegocio;
import NegocioImp.MateriaNegocio;

@WebServlet("/CursoServlet")
public class CursoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public CursoServlet() {
        // TODO Auto-generated constructor stub
    }
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CursoNegocio cursoNegocio = new CursoNegocio();
		int semestre;
		Materia materia = new Materia();
		int anio;
		Docente docente = new Docente();
		
		if(request.getParameter("lista") != null) {
			String lista = request.getParameter("lista");
			
			int idCurso = 0;
			if(request.getParameter("idCurso") != null) {
				System.out.println(request.getParameter("idCurso"));
				idCurso = Integer.parseInt(request.getParameter("idCurso"));
			}
			cursoNegocio.agregarAlumnos(lista, idCurso);
			
		}
		
		
		
		DocenteNegocio docenteNegocio = new DocenteNegocio();
		ArrayList<Docente> listaDocente = new ArrayList<Docente>();
		MateriaNegocio materiaNegocio = new MateriaNegocio();
		ArrayList<Materia> listaMateria = new ArrayList<Materia>();
		AlumnoNegocio alumnoNegocio = new AlumnoNegocio();
		ArrayList<Alumno> listaAlumno = new ArrayList<Alumno>();
		
			try {
			
			listaDocente = docenteNegocio.listar();
			listaMateria = materiaNegocio.listar();
			listaAlumno = alumnoNegocio.listar();
			
			request.setAttribute("Alumnos", listaAlumno);
			request.setAttribute("Materias", listaMateria);
			request.setAttribute("Cursos", cursoNegocio.listar());
			request.setAttribute("Docentes", listaDocente);
			RequestDispatcher rd = request.getRequestDispatcher("AbmCursos.jsp");
			rd.forward(request, response);
			} catch (Exception e) {
				// TODO: handle exception
			}		

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CursoNegocio cursoNegocio = new CursoNegocio();
		Curso nuevo = new Curso();
		DocenteNegocio docenteNegocio = new DocenteNegocio();
		ArrayList<Docente> listaDocente = new ArrayList<Docente>();
		MateriaNegocio materiaNegocio = new MateriaNegocio();
		ArrayList<Materia> listaMateria = new ArrayList<Materia>();
		
		try {
			
			if(request.getParameter("btnGuardar") != null) {

				nuevo.setAnio(Integer.parseInt(request.getParameter("Anio")));
				Docente docente = new Docente();
				docente.setId(Integer.parseInt(request.getParameter("Docente")));
				nuevo.setDocente(docente);
				Materia materia = new Materia();
				materia.setId(Integer.parseInt(request.getParameter("Materia")));
				nuevo.setMateria(materia);
				nuevo.setSemestre(Integer.parseInt(request.getParameter("Semestre")));
				
					
					cursoNegocio.agregar(nuevo);
					
					listaDocente = docenteNegocio.listar();
					listaMateria = materiaNegocio.listar();
					
					request.setAttribute("Materias", listaMateria);
					request.setAttribute("Cursos", cursoNegocio.listar());
					request.setAttribute("Docentes", listaDocente);
					RequestDispatcher rd = request.getRequestDispatcher("AbmCursos.jsp");
					rd.forward(request, response);
					
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
