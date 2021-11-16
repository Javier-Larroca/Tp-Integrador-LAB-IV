package Servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dominio.Curso;
import Dominio.Docente;
import Dominio.Materia;
import NegocioImp.CursoNegocio;

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
		//Docente docente = new Docente();
		
		int filas = 0;
		
		if(request.getParameter("btnAgregar") != null)
		{
			semestre = Integer.parseInt(request.getParameter("Semestre"));
			materia.setId(Integer.parseInt(request.getParameter("Materia")));
			anio = Integer.parseInt(request.getParameter("Anio"));
			//docente.setId(Integer.parseInt(request.getParameter("Docente")) );
			
			//Curso curso = new Curso(semestre, materia, anio, docente);
			
			//cursoNegocio.agregar(curso);
			
			request.setAttribute("ListCurso", cursoNegocio.listar());
			RequestDispatcher rd = request.getRequestDispatcher("/AbmCursos.jsp");
			rd.forward(request, response);
			
		}
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CursoNegocio curso = new CursoNegocio();
		
		if(request.getParameter("idDocente") != null)
		{
			int id= Integer.parseInt(request.getParameter("idDocente"));
			
			request.setAttribute("ListCurso", curso.listadoPorDocente(id));
			RequestDispatcher rd = request.getRequestDispatcher("/InicioDocente.jsp");
			rd.forward(request, response);
			
		}else {
			request.setAttribute("ListCurso", curso.listar());
			RequestDispatcher rd = request.getRequestDispatcher("/AbmCursos.jsp");
			rd.forward(request, response);
		}
		
		doGet(request, response);
	}

}
