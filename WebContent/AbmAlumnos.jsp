
<%@page import="Dominio.Alumno"%>
<%@page import="java.util.ArrayList"%>
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

	ArrayList<Alumno> lista = new ArrayList<Alumno>();
	if(request.getAttribute("listaAlumnos")!=null)
		lista = (ArrayList<Alumno>)request.getAttribute("listaAlumnos");		

	%>


	<jsp:include page="./HTML/NavAdmin.html"></jsp:include>
	
	<jsp:include page="./HTML/AbmAlumnos.html"></jsp:include>
	
	<table id="table_id" class="display">
						<thead class="text-center">
							<tr>
								<th scope="col">#</th>
								<th scope="col">Nombre</th>
								<th scope="col">Apellido</th>
								<th scope="col">DNI</th>
								<th scope="col">Fecha de Nacimiento</th>
								<th scope="col">Dirección</th>
								<th scope="col">Provincia</th>
								<th scope="col">Nacionalidad</th>
								<th scope="col">Email</th>
								<th scope="col">Teléfono</th>
								<th scope="col">Editar</th>
								<th scope="col">Eliminar</th>
							</tr>
						</thead>
						<tbody class="text-center">
						<%         for (Alumno item : lista) { %>
							<tr id="<%=item.getId()%>">
								<th scope="row"><%=item.getId() %></th>
								<td><%=item.getNombre() %></td>
								<td><%=item.getApellido() %></td>
								<td><%=item.getDni() %></td>
								<td><%=item.getFechaNacimiento() %></td>
								<td><%=item.getDireccion() %></td>
								<td><%=item.getProvincia().getNombre() %></td>
								<td><%=item.getNacionalidad().getNombre() %></td>
								<td><%=item.getMail() %></td>
								<td><%=item.getTelefono() %></td>
								<td>
									<button id="btnEditar" class="btn btn-success">
										<i class="fas fa-edit"></i>
									</button>
								</td>
								<td>
									<button class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
										<i class="fas fa-trash-alt"></i>
									</button>
								</td>
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
	
	<jsp:include page="./HTML/ModalConfirmacion.html"></jsp:include>
	
	<jsp:include page="./HTML/ScriptsDataTable.html"></jsp:include>

</body>
</html>