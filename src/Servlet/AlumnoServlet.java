package Servlet;


import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import NegocioImp.AlumnoNegocio;
import Dominio.Alumno;
import Dominio.Nacionalidad;
import Dominio.Provincia;


@WebServlet("/AlumnoServlet")
public class AlumnoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AlumnoServlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AlumnoNegocio alumnoNegocio = new AlumnoNegocio();
		ArrayList<Alumno> listaDeAlumnos = new ArrayList<Alumno>();
		try {
			
			listaDeAlumnos = alumnoNegocio.listar();
			request.setAttribute("listaAlumnos", listaDeAlumnos);
			
			RequestDispatcher rd = request.getRequestDispatcher("AbmAlumnos.jsp");
			rd.forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
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
			Nacionalidad nacionalidad = new Nacionalidad();
			nacionalidad.setId(Integer.parseInt(request.getParameter("Nacionalidad")));
			Provincia provincia = new Provincia();
			provincia.setId(Integer.parseInt(request.getParameter("Provincia")));
			Alumno nuevo = new Alumno(provincia, mail, legajo, dni, nombre, apellido, direccion,
					fechaNacimiento, telefono, nacionalidad);
			
			try {
				AlumnoNegocio alumnoNegocio = new AlumnoNegocio();
				if(id > 0) {
					
					alumnoNegocio.modificar(nuevo);
					
				}else {
					
					alumnoNegocio.agregar(nuevo);
					
				}
				
				
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			
			
			
			
			
		}
		
		
		
	}

}
