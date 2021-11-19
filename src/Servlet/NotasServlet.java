package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dominio.AlumnoxCurso;
import Dominio.Curso;
import NegocioImp.CursoNegocio;
import NegocioImp.DocenteNegocio;


/**
 * Servlet implementation class NotasServlet
 */
@WebServlet("/NotasServlet")
public class NotasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NotasServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idCurso = Integer.parseInt(request.getParameter("id"));
		int idDocente = Integer.parseInt(request.getParameter("docente"));
		CursoNegocio cursoNegocio = new CursoNegocio();
		ArrayList<AlumnoxCurso> listarAlumnosxCurso = new ArrayList<AlumnoxCurso>();
		ArrayList<Curso> cursosXdocente = new ArrayList<Curso>();
		Curso curso = new Curso();
		
		try {
			cursosXdocente = cursoNegocio.listadoPorDocente(idDocente);
			for(Curso item: cursosXdocente) {
				if(item.getId() == idCurso) {
					curso = item;
				}
			}
			listarAlumnosxCurso = cursoNegocio.listarAlumnosxCurso(idCurso);
			request.setAttribute("alumnos", listarAlumnosxCurso);
			request.setAttribute("curso", curso);
			request.getSession().setAttribute("docente",idDocente);
			RequestDispatcher rd = request.getRequestDispatcher("AbmNotas.jsp");
			rd.forward(request, response);
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int idCurso = Integer.parseInt(request.getParameter("curso"));
		CursoNegocio cursoNegocio = new CursoNegocio();
		DocenteNegocio docenteNegocio = new DocenteNegocio();
		int idDocente;
		ArrayList<AlumnoxCurso> alumnosXcurso = new ArrayList<AlumnoxCurso>();
		try {

			alumnosXcurso = cursoNegocio.listarAlumnosxCurso(idCurso);
			for(AlumnoxCurso item : alumnosXcurso) {
				if(request.getParameter(item.getLegajo()+"Parcial1") != null) {
					item.setParcial1(Integer.parseInt(request.getParameter(item.getLegajo()+"Parcial1")));
				}
				if(request.getParameter(item.getLegajo()+"Parcial2") != null) {
					item.setParcial2(Integer.parseInt(request.getParameter(item.getLegajo()+"Parcial2")));
				}
				if(request.getParameter(item.getLegajo()+"Recuperatorio1") != null) {
					item.setRecuperatorio1(Integer.parseInt(request.getParameter(item.getLegajo()+"Recuperatorio1")));
				}
				if(request.getParameter(item.getLegajo()+"Recuperatorio2") != null) {
					item.setRecuperatorio2(Integer.parseInt(request.getParameter(item.getLegajo()+"Recuperatorio2")));
				}
				if(request.getParameter(item.getLegajo()+"Estado") != null) {
					boolean estado = Integer.parseInt(request.getParameter(item.getLegajo()+"Estado")) == 1 ? true : false;
					item.setEstado(estado);
				}
				cursoNegocio.cargarNotas(item);
			}
			idDocente = Integer.parseInt(request.getSession().getAttribute("docente").toString());
			ArrayList<AlumnoxCurso> listarAlumnosxCurso = new ArrayList<AlumnoxCurso>();
			ArrayList<Curso> cursosXdocente = new ArrayList<Curso>();
			Curso curso = new Curso();
			
			try {
				cursosXdocente = cursoNegocio.listadoPorDocente(idDocente);
				for(Curso item: cursosXdocente) {
					if(item.getId() == idCurso) {
						curso = item;
					}
				}
				listarAlumnosxCurso = cursoNegocio.listarAlumnosxCurso(idCurso);
				request.setAttribute("alumnos", listarAlumnosxCurso);
				request.setAttribute("curso", curso);
				request.getSession().setAttribute("docente",idDocente);
				RequestDispatcher rd = request.getRequestDispatcher("AbmNotas.jsp");
				rd.forward(request, response);
				
			}	catch (Exception e) {
				// TODO: handle exception
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

			


	}

}
