package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dominio.Administrador;
import Dominio.Docente;
import Negocio.IUsuarioNegocio;
import NegocioImp.UsuarioNegocio;

/**
 * Servlet implementation class UsuarioServlet
 */
@WebServlet("/UsuarioServlet")
public class UsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IUsuarioNegocio negocio;
	private static final int USUARIO_ADMINISTRADOR = 1;
	private static final int USUARIO_DOCENTE = 2;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioServlet() {
        super();
        negocio = new UsuarioNegocio();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
		
			if (request.getParameter("btnIniciar") != null) {
				String mail = request.getParameter("mailIngresado");
				String password = request.getParameter("passIngresada");
				int idUsuario = negocio.obtenerUsuario(mail, password);
				if (idUsuario != 0) {
					switch (negocio.obtenerTipoUsuario(idUsuario)) {
					case USUARIO_ADMINISTRADOR:
					{
						Administrador administrador = negocio.obtenerAdministrador(idUsuario);
						if(administrador == null) {
							request.setAttribute("usuarioInvalido", true);
							RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
							rd.forward(request, response);
						}
						request.getSession().setAttribute("usuario", 1);
						request.getSession().setAttribute("nombreusuario", administrador);
						request.setAttribute("Administrador", administrador);
						RequestDispatcher rd = request.getRequestDispatcher("InicioAdministrador.jsp");
						rd.forward(request, response);
						
					}
						break;
					case USUARIO_DOCENTE:
					{
						Docente docente = negocio.obtenerDocente(idUsuario);
						if(docente == null) {
							request.setAttribute("usuarioInvalido", true);
							RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
							rd.forward(request, response);
						}
						request.getSession().setAttribute("usuario", 2);
						request.getSession().setAttribute("nombreusuario", docente);
						request.setAttribute("Docente", docente);
						RequestDispatcher rd = request.getRequestDispatcher("CursosDocenteServlet");
						rd.forward(request, response);
					}
						break;
					}
				}else {
					request.setAttribute("usuarioNoExiste", true);
					RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
					rd.forward(request, response);
				}
			}
		}catch(Exception e){
			
		}
		
	}

}
