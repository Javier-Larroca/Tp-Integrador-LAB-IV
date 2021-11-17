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
import Dominio.Docente;
import Dominio.Localidad;
import Dominio.Nacionalidad;
import Dominio.Provincia;
import NegocioImp.AlumnoNegocio;
import NegocioImp.DocenteNegocio;
import NegocioImp.LocalidadNegocio;
import NegocioImp.NacionalidadNegocio;
import NegocioImp.ProvinciaNegocio;
import NegocioImp.UsuarioNegocio;

/**
 * Servlet implementation class DocenteServlet
 */
@WebServlet("/DocenteServlet")
public class DocenteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DocenteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DocenteNegocio docenteNegocio = new DocenteNegocio();
		ArrayList<Docente> listaDeDocentes = new ArrayList<Docente>();
		ArrayList<Nacionalidad> nac = new ArrayList<Nacionalidad>();
		ArrayList<Localidad> loc = new ArrayList<Localidad>();
		LocalidadNegocio locNegocio = new LocalidadNegocio();
		NacionalidadNegocio nacNegocio = new NacionalidadNegocio();
		
		if(request.getParameter("id") != null) {
			int id = Integer.parseInt(request.getParameter("id"));
			docenteNegocio.eliminar(id);
		}
		try {
			
			listaDeDocentes = docenteNegocio.listar();
			nac = nacNegocio.listar();
			loc = locNegocio.listar();
			request.setAttribute("listaAlumnos", listaDeDocentes);
			request.setAttribute("nacionalidades", nac);
			request.setAttribute("localidades", loc);
			RequestDispatcher rd = request.getRequestDispatcher("AbmDocentes.jsp");
			rd.forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DocenteNegocio docenteNegocio = new DocenteNegocio();
		ArrayList<Docente> listaDeDocentes = new ArrayList<Docente>();
		ArrayList<Nacionalidad> nac = new ArrayList<Nacionalidad>();
		ArrayList<Localidad> loc = new ArrayList<Localidad>();
		LocalidadNegocio locNegocio = new LocalidadNegocio();
		NacionalidadNegocio nacNegocio = new NacionalidadNegocio();
		UsuarioNegocio usuarioNegocio = new UsuarioNegocio();
		

		
		if(request.getParameter("btnGuardar") != null) {
			
			int id = Integer.parseInt(request.getParameter("Id"));
			String mail = request.getParameter("Mail");
			int legajo = Integer.parseInt(request.getParameter("Legajo"));
			String dni = request.getParameter("DNI");
			String nombre = request.getParameter("Nombre");
			String apellido = request.getParameter("Apellido");
			String fechaNacimiento = request.getParameter("FechaNacimiento");
			String direccion = request.getParameter("Direccion");
			String telefono = request.getParameter("Telefono");
			String contrasenia = request.getParameter("Contrasena");
			Nacionalidad nacionalidad = new Nacionalidad();
			nacionalidad.setId(Integer.parseInt(request.getParameter("Nacionalidad")));
			Localidad localidad = new Localidad();

			localidad.setId(Integer.parseInt(request.getParameter("Localidad")));
			
			Docente nuevo = new Docente(mail, legajo, dni, nombre, apellido, direccion,
					fechaNacimiento, telefono, nacionalidad, localidad,contrasenia);
			
			try {
				
				if(id > 0) {
					nuevo.setId(id);
					docenteNegocio.modificar(nuevo);
					
				}else {
					usuarioNegocio.agregarUsuario(nuevo);
					int idUsuario = usuarioNegocio.obtenerUsuario(nuevo.getMail(), nuevo.getContrasenia());
					nuevo.setId(idUsuario);
					docenteNegocio.agregar(nuevo);
				}
				
				listaDeDocentes = docenteNegocio.listar();
				nac = nacNegocio.listar();
				loc = locNegocio.listar();

				request.setAttribute("localidades", loc);
				request.setAttribute("nacionalidades", nac);
				request.setAttribute("listaAlumnos", listaDeDocentes);
				
				RequestDispatcher rd = request.getRequestDispatcher("AbmDocentes.jsp");
				rd.forward(request, response);
				
				
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			
			
			
			
			
		}
	}

}
