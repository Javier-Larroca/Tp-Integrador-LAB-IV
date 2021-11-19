<%@ page import="Dominio.AlumnoxCurso"%>
<%@ page import="Dominio.Curso"%>
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
		ArrayList<AlumnoxCurso> lista = new ArrayList<AlumnoxCurso>();
		if (request.getAttribute("alumnos") != null)
			lista = (ArrayList<AlumnoxCurso>) request.getAttribute("alumnos");

		Curso curso = new Curso();
		if (request.getAttribute("curso") != null)
			curso = (Curso) request.getAttribute("curso");
	%>

	<jsp:include page="./HTML/NavDocente.html"></jsp:include>

	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-9">
				<h1 class="my-3 text-left">
					Curso:
					<%=curso.getMateria().getDescripcion()%>
					,
					<%=curso.getSemestre() == 1 ? "1er Semestre" : "2do Semestre"%>,
					<%=curso.getAnio()%></h1>
				<div class="card bg-secondary">
					<form id="formulario" action="NotasServlet" method="post">
						<div class="card-body">
							<table id="table_id" name="tabla" class="display">
								<thead class="text-center">
									<tr>
										<th scope="col">Legajo</th>
										<th scope="col">Nombre</th>
										<th scope="col">Apellido</th>
										<th scope="col">1er Parcial
											<button class="btn btn-sm btn-success">
												<i class="fas fa-edit"></i>
											</button>
										</th>
										<th scope="col">1er Recuperatorio
											<button class="btn btn-sm btn-success">
												<i class="fas fa-edit"></i>
											</button>
										</th>
										<th scope="col">2do Parcial
											<button class="btn btn-sm btn-success">
												<i class="fas fa-edit"></i>
											</button>
										</th>
										<th scope="col">2do Recuperatorio
											<button class="btn btn-sm btn-success">
												<i class="fas fa-edit"></i>
											</button>
										</th>
										<th scope="col">Estado</th>
									</tr>
								</thead>
								<tbody class="text-center">
									<input hidden name="curso" value="<%= curso.getId() %>" />
									<%
										for (AlumnoxCurso item : lista) {
									%>
									<tr>

										<th scope="row"><%=item.getLegajo()%></th>
										<td><%=item.getNombre()%></td>
										<td><%=item.getApellido()%></td>
										<td><input name="<%=item.getLegajo()%>Parcial1" class="form-control"
											value="<%=item.getParcial1()%>" type="number" min="0"
											max="10" /></td>
										<td><input name="<%=item.getLegajo()%>Recuperatorio1" class="form-control"
											value="<%=item.getRecuperatorio1()%>" type="number" min="0"
											max="10" /></td>
										<td><input name="<%=item.getLegajo()%>Parcial2" class="form-control"
											value="<%=item.getParcial2()%>" type="number" min="0"
											max="10" /></td>
										<td><input name="<%=item.getLegajo()%>Recuperatorio2" class="form-control"
											value="<%=item.getRecuperatorio2()%>" type="number" min="0"
											max="10" /></td>
										<td><select name="<%=item.getLegajo()%>Estado"
											class="custom-select" id="Estado">
												<option>Seleccionar</option>
												<% if(item.isEstado()){%>
													<option value="0">Libre</option>
													<option selected value="1">Regular</option>
												<%} else{ %>
													<option selected value="0">Libre</option>
													<option  value="1">Regular</option>
													<%}%>
										</select></td>
									</tr>

									<%
										}
									%>
								</tbody>
							</table>
						</div>
						<div class="card-footer text-right">
							<button class="btn btn-dark" type="submit">Guardar
								Cambios</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="./HTML/Footer.html"></jsp:include>

	<jsp:include page="./HTML/ScriptsDataTable.html"></jsp:include>

	<script>
 	
 	/*let notasAlumnos = [
 		{
 			"legajo": 1,
 			"parcial1": 2,
 			"parcial2": 3,
 			"recuperatorio1": 4,
 			"recuperatorio2": 5,
 		}
 	];
 	let datos = $(this).serialize();
 	$("#formulario").submit(function(e){
 		e.preventDefault();
 		  $.ajax(
 				  {
 					  url: "NotasServlet",
 					  datatype: "JSON",
 					  type: "post",
 					  data: datos,
 					  success: function(result){
 		    				console.log(result);
 		    				console.log(datos)
 		  		}});
 		});*/
 	
 		
 
 </script>

</body>
</html>