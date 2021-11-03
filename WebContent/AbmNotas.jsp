<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous" />
<!-- fontawesome icon -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous" />
<title>Insert title here</title>
</head>
 <body class="bg-primary">
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark"> <a
		class="navbar-brand" href="#">Navbar</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse d-flex justify-content-end"
		id="navbarSupportedContent">
		<ul class="navbar-nav">
			<li class="nav-item active"><a class="nav-link disabled"
				style="cursor: pointer !important;" href="#">Nombre Docente</a></li>
			<li class="nav-item active"><a class="nav-link" href="Login.jsp">Cerrar
					Sesión</a></li>
		</ul>
	</div>
	</nav>
    <div class="container">
      <h1 class="my-3">Curso: Materia, Semestre, Año</h1>
      <div class="card bg-secondary">
        <div class="card-body">
          <div class="row mb-2">
            <div class="col-9">
              <input
                class="form-control me-2"
                type="search"
                placeholder="Buscar"
                aria-label="Search"
              />
            </div>
            <div class="col">
              <button class="btn btn-dark" type="submit">Buscar</button>
            </div>
          </div>
          <table class="table table-dark table-striped">
            <thead>
              <tr>
                <th scope="col">Legajo</th>
                <th scope="col">Nombre</th>
                <th scope="col">Apellido</th>
                <th scope="col">1er Parcial <button class="btn btn-sm btn-success"><i class="fas fa-edit"></i></button></th>
                <th scope="col">1er Recuperatorio <button class="btn btn-sm btn-success"><i class="fas fa-edit"></i></button></th>
                <th scope="col">2do Parcial <button class="btn btn-sm btn-success"><i class="fas fa-edit"></i></button></th>
                <th scope="col">2do Recuperatorio <button class="btn btn-sm btn-success"><i class="fas fa-edit"></i></button></th>
                <th scope="col">Estado</th>
              </tr>
            </thead>
            <tbody class="text-center">
              <tr>
                <th scope="row">1111</th>
                <td>Agustín</td>
                <td>Larroca</td>
                <td><input class="form-control" type="number" min="0" max="10" /></td>
                <td><input class="form-control" type="number" min="0" max="10" /></td>
                <td><input class="form-control" type="number" min="0" max="10" /></td>
                <td><input class="form-control" type="number" min="0" max="10" /></td>
                <td>
                    <select name="" class="custom-select" id="">
                        <option value="1">Libre</option>
                        <option value="2">Regular</option>
                    </select>
            </td>
              </tr>
              <tr>
                <th scope="row">1111</th>
                <td>Agustín</td>
                <td>Larroca</td>
                <td><input class="form-control" type="number" min="0" max="10" /></td>
                <td><input class="form-control" type="number" min="0" max="10" /></td>
                <td><input class="form-control" type="number" min="0" max="10" /></td>
                <td><input class="form-control" type="number" min="0" max="10" /></td>
                <td>
                    <select name="" class="custom-select" id="">
                        <option value="1">Libre</option>
                        <option value="2">Regular</option>
                    </select>
            </td>
              </tr>
              <tr>
                <th scope="row">1111</th>
                <td>Agustín</td>
                <td>Larroca</td>
                <td><input class="form-control" type="number" min="0" max="10" /></td>
                <td><input class="form-control" type="number" min="0" max="10" /></td>
                <td><input class="form-control" type="number" min="0" max="10" /></td>
                <td><input class="form-control" type="number" min="0" max="10" /></td>
                <td>
                    <select name="" class="custom-select" id="">
                        <option value="1">Libre</option>
                        <option value="2">Regular</option>
                    </select>
            </td>
              </tr>
            </tbody>
          </table>
          <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-end">
                <li class="page-item disabled"><a class="page-link">Previous</a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">Next</a>
                </li>
            </ul>
            </nav>
        </div>
        <div class="card-footer text-right">
            <button class="btn btn-dark" type="submit">Guardar Cambios</button>
        </div>
      </div>
    </div>
    <footer class="container-fluid bg-dark text-light fixed-bottom">
	<div class="row align-items-center">
		<div class="col">
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link"><i
						class="fab fa-linkedin-in"></i> Agustin Larroca</a></li>
				<li class="nav-item"><a href="#" class="nav-link"><i
						class="fab fa-linkedin-in"></i> Elmer Vasquez</a></li>
				<li class="nav-item"><a href="#" class="nav-link"><i
						class="fab fa-linkedin-in"></i> Gaston Paz</a></li>
				<li class="nav-item"><a href="#" class="nav-link"><i
						class="fab fa-linkedin-in"></i> Matias Sanchez</a></li>
				<li class="nav-item"><a href="#" class="nav-link"><i
						class="fab fa-linkedin-in"></i> Maximiliano Miranda</a></li>
			</ul>
		</div>
		<div class="col-2 text-right">
			<h6>
				Version - <span>1.0.0</span>
			</h6>
		</div>
	</div>
	</footer>
    <!-- bootstrap js -->
		<script
        src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"
    ></script>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
        crossorigin="anonymous"
    ></script>
  </body>
</html>