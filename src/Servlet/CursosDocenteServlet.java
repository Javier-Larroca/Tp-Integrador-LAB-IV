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
		int idDocente = 7;
		
		try {
			
			cursosXdocente = cursoNegocio.listaCursoDocente(idDocente);
			request.setAttribute("listadoCursos", cursosXdocente);
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
