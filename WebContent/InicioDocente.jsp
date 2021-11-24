<%@ page import="Dominio.Curso"%>
<%@ page import="Dominio.Docente"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
crossorigin="anonymous" />
<!-- fontawesome icon -->
<link rel="stylesheet"
href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
crossorigin="anonymous" />
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
<link rel="icon" type="image/png" href="./utn.ico" />
<title>UTN-TUP</title>
</head>
<body class="bg-primary">

	<% 
	
	
		int usuario = 0;
		Docente docenteUsuario = new Docente();
		if(request.getSession().getAttribute("usuario") != null){
			usuario = ((int)request.getSession().getAttribute("usuario"));
		}
	
		if(usuario == 1 || usuario == 0){
			RequestDispatcher rd = request.getRequestDispatcher("Error.jsp");
			rd.forward(request, response);
		}else{
			if(request.getSession().getAttribute("nombreusuario") != null){
				docenteUsuario = ((Docente)request.getSession().getAttribute("nombreusuario"));
			}
		}
	

		int docente = 0;
		if(request.getAttribute("docente")!=null)
			docente = (int)request.getAttribute("docente");
	
		ArrayList<Curso> cursosXdocente = new ArrayList<Curso>();
		if(request.getAttribute("listadoCursos")!=null)
			cursosXdocente = (ArrayList<Curso>)request.getAttribute("listadoCursos");
	%>
	
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="InicioDocente.jsp">UTN-TUP</a>
  <button
    class="navbar-toggler"
    type="button"
    data-toggle="collapse"
    data-target="#navbarSupportedContent"
    aria-controls="navbarSupportedContent"
    aria-expanded="false"
    aria-label="Toggle navigation"
  >
    <span class="navbar-toggler-icon"></span>
  </button>

  <div
    class="collapse navbar-collapse d-flex justify-content-end"
    id="navbarSupportedContent"
  >
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link disabled" style="cursor: pointer !important" href="#"
          ><%=docenteUsuario.getMail() %></a
        >
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="Login.jsp">Cerrar Sesión</a>
      </li>
    </ul>
  </div>
</nav>

	
<div class="container-fluid">
  <div class="row">
    <div class="col-12">
      <div class="container">
        <h1 class="my-3">Cursos de <%=docenteUsuario.getApellido() %>, <%=docenteUsuario.getNombre() %></h1>
        <div class="card bg-secondary">
          <div class="card-body">
            <table id="table_id" class="display">
              <thead class="text-center">
                <tr>
                  <th scope="col"></th>
                  <th scope="col">Materia</th>
                  <th scope="col">Año</th>
                  <th scope="col">Semestre</th>
                  <th scope="col"></th>
                </tr>
              </thead>
              <tbody>
              <% for(Curso item: cursosXdocente) { %>
                <tr class="text-center">
                  <th scope="row"><%= item.getId() %></th>
                  <td><%= item.getMateria().getDescripcion() %></td>
                  <td><%= item.getAnio() %></td>
                  <td><%= item.getSemestre() %></td>
                  <td><a href="NotasServlet?id=<%= item.getId() %>&docente=<%= docente %>">Ver detalle</a></td>
                </tr>
                <% } %>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

	
	<jsp:include page="./HTML/Footer.html"></jsp:include>
	
	<jsp:include page="./HTML/ScriptsDataTable.html"></jsp:include>
	

	
</body>
</html>