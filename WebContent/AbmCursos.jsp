<%@ page import="Dominio.Curso"%>
<%@ page import="Dominio.Administrador"%>
<%@ page import="Dominio.AlumnoxCurso"%>
<%@ page import="Dominio.Alumno"%>
<%@ page import="Dominio.Materia"%>
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

	ArrayList<Curso> lista = new ArrayList<Curso>();
	ArrayList<Materia> listaMateria = new ArrayList<Materia>();
	ArrayList<Docente> listaDocente = new ArrayList<Docente>();
	ArrayList<Alumno> listaAlumnos = new ArrayList<Alumno>();
	ArrayList<AlumnoxCurso> listaAlumnoxCurso = new ArrayList<AlumnoxCurso>();
	
	
	if(request.getAttribute("Alumnos")!=null)
		listaAlumnos = (ArrayList<Alumno>)request.getAttribute("Alumnos");
	
	if(request.getAttribute("Cursos")!=null)
		lista = (ArrayList<Curso>)request.getAttribute("Cursos");
	
	if(request.getAttribute("Materias")!=null)
		listaMateria = (ArrayList<Materia>)request.getAttribute("Materias");
	
	if(request.getAttribute("Docentes")!=null)
		listaDocente = (ArrayList<Docente>)request.getAttribute("Docentes");
	
	if(request.getAttribute("AlumnosxCurso")!=null)
		listaAlumnoxCurso = (ArrayList<AlumnoxCurso>)request.getAttribute("AlumnosxCurso");
	
	int idCurso = 0;
	if(request.getAttribute("idCurso")!=null)
		idCurso = ((int)request.getAttribute("idCurso"));

	%>
	
	<p hidden id="cursoInvisible" name="<%= idCurso%>"><%= idCurso%></p>

	<%
		int usuario = 0;
		Administrador AdministradorLogueado = new Administrador();
		if(request.getSession().getAttribute("usuario") != null){
			usuario = ((int)request.getSession().getAttribute("usuario"));
		}
	
		if(usuario == 2 || usuario == 0){
			RequestDispatcher rd = request.getRequestDispatcher("Error.jsp");
			rd.forward(request, response);
		}else{
			if(request.getSession().getAttribute("nombreusuario") != null){
				AdministradorLogueado = ((Administrador)request.getSession().getAttribute("nombreusuario"));
			}
		}
		
	%>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="InicioAdministrador.jsp">UTN-TUP</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse d-flex justify-content-start" id="navbarSupportedContent">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="CursoServlet">Cursos</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="DocenteServlet">Docentes</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="AlumnoServlet">Alumnos</a>
            </li>

        </ul>
    </div>
    <div class="collapse navbar-collapse d-flex justify-content-end">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link active disabled" style="cursor: pointer !important;" href="#"><%=AdministradorLogueado.getMail() %></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="Login.jsp">Cerras Sesión</a>
            </li>
        </ul>
    </div>
</nav>

	
<div class="container-fluid">
	<h1 class="my-3">Cursos</h1>
	<div class="row">
		<div class="col-3">
			<div class="card bg-secondary">
				<div class="card-header">
					<h3 class="card-title">Cargar Curso</h3>
				</div>
				<div class="card-body">
					<form action="CursoServlet" method="post">
						<div class="form">
							<select class="custom-select my-2" name="Materia" id="Materia">
								<%         for (Materia m : listaMateria) { %>
									<option value="<%= m.getId()%>"><%= m.getDescripcion()%></option>
									<% }  %>
							</select> 
							<select class="custom-select" name="Semestre" id="Semestre">
								<option value="1">1er Semestre</option>
								<option value="2">2do Semestre</option>
							</select> <input name="Anio" maxLength="4" id="Anio" type="text" class="form-control my-2"
								placeholder="Año" /> 
								<select class="custom-select" name="Docente" id="Docente">
									<%         for (Docente d : listaDocente) { %>
									<option value="<%= d.getId()%>"><%= d.getLegajo() + " " + d.getNombre() + " " + d.getApellido()%></option>
									<% }  %>
								</select>
							
						</div>
						<div class="card-footer text-right">
							<input type="submit" class="btn btn-primary" name="btnGuardar" value="Guardar"/>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card bg-secondary">
				<div class="card-body">
					
	
	<table id="table_id" class="display">
						<thead class="text-center">
							<tr>
								<th scope="col">#</th>
								<th scope="col">Materia</th>
								<th scope="col">Semestre</th>
								<th scope="col">Año</th>
								<th scope="col">Docente</th>
								<th scope="col">Alumnos</th>
							</tr>
						</thead>
						<tbody class="text-center">
						<% for (Curso item : lista) { %>
							<tr>
								<th scope="row"><%= item.getId() %></th>
								<td><%= item.getMateria().getDescripcion() %></td>
								<td><%= item.getSemestre() == 1 ? "1er Semestre" : "2do Semestre" %></td>
								<td><%= item.getAnio() %></td>
								<td><%= item.getDocente().getNombre() %></td>
								<td> <button class="btn btn-info fas fa-user-plus" data-toggle="modal" name="btnAlumno"  data-id="<%= item.getId() %>" data-target="#exampleModal"> </button> </td>
	
							</tr>
						<% } %>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
	
	<jsp:include page="./HTML/Footer.html"></jsp:include>
	
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="exampleModalLabel">Listado de alumnos</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
<div class="container">
    <div class="row">
        <div class="col-5">
        	<h5>Alumnos de la carrera</h5>
            <select id="listaAlumno" multiple style="height: 300px;" class="form-control">
				<% for (Alumno A : listaAlumnos) { %>
				<option value="<%= A.getId()%>"><%= A.getLegajo() + " " + A.getNombre() + " " + A.getApellido()%></option>
				<% }  %>
            </select>
        </div>

        <div class="col-2 align-self-center">
            <div class="row my-2">
                <div class="btn btn-primary btn-block" onclick="agregarAlumnos()">Agregar</div>

            </div>
            <div class="row my-2">
                <div class="btn btn-primary btn-block" onclick="eliminarAlumnos()">Borrar</div>

            </div>
        </div>


        <div class="col-5">
        <h5>Alumnos del curso</h5>
            <select id="listaNueva" multiple style="height: 300px;" class="form-control">
				<% for (AlumnoxCurso AC : listaAlumnoxCurso) { %>
				<option value="<%= AC.getIdAlumno()%>"><%= AC.getLegajo() + " " + AC.getNombre() + " " + AC.getApellido()%></option>
				<% }  %>
            </select>
        </div>
        
    </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="guardarLista()">Guardar Cambios</button>
      </div>
    </div>
  </div>
</div>
	
	<jsp:include page="./HTML/ScriptsDataTable.html"></jsp:include>

	<script type="text/javascript">
	$(document).ready(function(){ 
    		const id = <%= idCurso%>;
    		if(Number(id) != 0){
        	$( '#listaNueva' ).data( 'id', id );
        	$("#exampleModal").modal("show");
        	cargarAlumnos();
    }
	});
	function cargarAlumnos(){
		$('#listaNueva option').each(function() {
			var e = Number($(this).val());
			console.log('E = '+e)
			$('#listaAlumno option').each(function(){
				var a = Number($(this).val());
					console.log('E=' + e + ' A=' +a )
				if(e === a){
					$(this).remove();
				}
			});
			
		});

	}
	</script>

</body>
</html>