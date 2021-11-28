<%@ page import="Dominio.Localidad"%>
<%@ page import="Dominio.Nacionalidad"%>
<%@ page import="Dominio.Curso"%>
<%@ page import="Dominio.Docente"%>
<%@ page import="Dominio.Administrador"%>
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
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
<link rel="icon" type="image/png" href="./utn.ico" />
<title>UTN-TUP</title>
</head>
<body class="bg-primary">

	<%

		ArrayList<Docente> lista = new ArrayList<Docente>();
		ArrayList<Nacionalidad> nac = new ArrayList<Nacionalidad>();
		ArrayList<Localidad> loc = new ArrayList<Localidad>();
		if (request.getAttribute("listaAlumnos") != null)
			lista = (ArrayList<Docente>) request.getAttribute("listaAlumnos");

		if (request.getAttribute("nacionalidades") != null)
			nac = (ArrayList<Nacionalidad>) request.getAttribute("nacionalidades");

		if (request.getAttribute("localidades") != null)
			loc = (ArrayList<Localidad>) request.getAttribute("localidades");
	%>

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
                <a class="nav-link" href="Login.jsp">Cerras SesiÛn</a>
            </li>
        </ul>
    </div>
</nav>

	<div class="container-fluid">
		<h1 class="my-3">Docentes</h1>
		<div class="row">
			<div class="col-3">
				<div class="card bg-secondary">
					<div class="card-header">
						<h3 class="card-title">Cargar Docente</h3>
					</div>
					<div class="card-body">
						<form action="DocenteServlet" method="post">
							<div class="form-row">
								<div class="col">
									<input type="hidden" id="Id" name="Id" type="text" class="form-control my-2"
									placeholder="Id" value="0"/>
									<input name="Nombre" type="text" id="Nombre" class="form-control my-2"
										placeholder="Nombre" maxLength="64" /> 
									<input name="DNI" id="DNI" type="text" class="form-control my-2" placeholder="DNI" maxLength="10" onkeypress='return event.charCode >= 48 && event.charCode <= 57'/>
									<input name="Direccion" id="Direccion" type="text" class="form-control my-2"
										placeholder="DirecciÛn" maxLength="250" /> 
									<input id="Mail" name="Mail" type="email" class="form-control my-2"
										placeholder="Mail" maxLength="100" /> 
										<select class="custom-select" name="Nacionalidad" id="Nacionalidad">
										<%         for (Nacionalidad n : nac) { %>
									<option value="<%= n.getId()%>"><%= n.getDescripcion()%></option>
									<% }  %>
									</select> 
									<input id="Contrasena" name="Contrasena" type="text" class="form-control my-2"
										placeholder="ContraseÒa" maxLength="20" />
								</div>
								<div class="col">
									<input name="Apellido" id="Apellido" type="text" class="form-control my-2"
										placeholder="Apellido" maxLength="64" /> 
										<input name="FechaNacimiento" id="FechaNacimiento" type="date" class="form-control my-2" />
									<select class="custom-select" name="Localidad" id="Localidad">
										<%         for (Localidad l : loc) { %>
									<option value="<%= l.getId()%>"><%= l.getDescripcion()%></option>
									<% }  %>
									</select> 
									<input name="Telefono" type="text" class="form-control my-2"
										placeholder="TelÈfono" id="Telefono" maxLength="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57' /> 
										<input name="Legajo" type="number" class="form-control my-2"
										placeholder="Legajo" id="Legajo" onkeypress='return event.charCode >= 48 && event.charCode <= 57' />
								</div>
							</div>
							<div class="card-footer text-right">
					<input type="submit" class="btn btn-primary" id="btnGuardar" name="btnGuardar" value="Guardar" />
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
									<th scope="col">Nombre</th>
									<th scope="col">Apellido</th>
									<th scope="col">DNI</th>
									<th scope="col">Fecha de Nacimiento</th>
									<th scope="col">Direcci√≥n</th>
									<th scope="col">Localidad</th>
									<th scope="col">Nacionalidad</th>
									<th scope="col">Email</th>
									<th scope="col">Tel√©fono</th>
									<th scope="col">Editar</th>
									<th scope="col">Eliminar</th>
								</tr>
							</thead>
							<tbody class="text-center">
								<%
									for (Docente item : lista) {
								%>

								<tr  id="<%=item.getId()%>">
								<td scope="row"><%=item.getLegajo() %></td>
								<td><%=item.getNombre() %></td>
								<td><%=item.getApellido() %></td>
								<td><%=item.getDni() %></td>
								<td><%=item.getFechaNacimiento() %></td>
								<td><%=item.getDireccion() %></td>
								<td><%=item.getLocalidad().getDescripcion() %></td>
								<td><%=item.getNacionalidad().getDescripcion() %></td>
								<td><%=item.getMail() %></td>
								<td><%=item.getTelefono() %></td>
									<td>
										<button id="btnEditar" name="editar"
											data-id="<%=item.getId()%>"
											class="btn btn-success fas fa-edit"></button>
									</td>
									<td>
										<button class="btn btn-danger fas fa-trash-alt"
											data-id="<%=item.getId()%>" name="borrar"
											data-toggle="modal" data-target="#exampleModal"></button>
									</td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>


	<jsp:include page="./HTML/Footer.html"></jsp:include>

	<jsp:include page="./HTML/ModalConfirmacion.html"></jsp:include>

	<jsp:include page="./HTML/ScriptsDataTable.html"></jsp:include>

</body>
</html>