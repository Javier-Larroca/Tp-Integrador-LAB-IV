package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dominio.Curso;
import Dominio.Docente;
import NegocioImp.CursoNegocio;
import NegocioImp.DocenteNegocio;

/**
 * Servlet implementation class CursosDocenteServlet
 */
@WebServlet("/CursosDocenteServlet")
public class CursosDocenteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CursosDocenteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Curso> cursosXdocente = new ArrayList<Curso>();
		DocenteNegocio cursoNegocio = new DocenteNegocio();
		int idDocente = 0;
		
		if(request.getParameter("Docente")!=null) {
			
			idDocente = Integer.parseInt(request.getParameter("Docente"));
			
		}else {
			if(((Docente)request.getAttribute("Docente")).getId() > 0) {
				
				idDocente = ((Docente)request.getAttribute("Docente")).getId();
			}
		}
		
		
		try {
			
			cursosXdocente = cursoNegocio.listaCursoDocente(idDocente);
			request.setAttribute("listadoCursos", cursosXdocente);
			request.setAttribute("docente", idDocente);
			RequestDispatcher rd = request.getRequestDispatcher("InicioDocente.jsp");
			rd.forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
