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
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="#">Navbar</a>
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

			<div class="collapse navbar-collapse d-flex justify-content-start" id="navbarSupportedContent">
				<ul class="navbar-nav">
				<li class="nav-item">
						<a class="nav-link" href="#">Cursos</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="#">Docentes</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Alumnos</a>
					</li>
					
				</ul>
			</div>
			<div class="collapse navbar-collapse d-flex justify-content-end">
			<ul class="navbar-nav">
				<li class="nav-item">
						<a class="nav-link active disabled"
				style="cursor: pointer !important;" href="#">Nombre del Admin</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="#">Cerras Sesión</a>
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
              <form action="">
                <div class="form-row">
                  <div class="col">
                    <input
                      name="Nombre"
                      type="text"
                      class="form-control my-2"
                      placeholder="Nombre"
                    />
                    <input
                      name="DNI"
                      type="text"
                      class="form-control my-2"
                      placeholder="DNI"
                    />
                    <input
                      name="Direccion"
                      type="text"
                      class="form-control my-2"
                      placeholder="Dirección"
                    />
                    <input
                      name="Mail"
                      type="email"
                      class="form-control my-2"
                      placeholder="Mail"
                    />
                    <select class="custom-select" name="Nacionalidad" id="">
                      <option value="1">Argentina</option>
                      <option value="1">Brasil</option>
                    </select>
                  </div>
                  <div class="col">
                    <input
                      name="Apellido"
                      type="text"
                      class="form-control my-2"
                      placeholder="Apellido"
                    />
                    <input
                      name="FechaNacimiento"
                      type="date"
                      class="form-control my-2"
                    />
                    <select class="custom-select" name="localidad" id="">
                      <option value="1">General Pacheco</option>
                      <option value="1">Tigre</option>
                    </select>
                    <input
                      name="Telefono"
                      type="text"
                      class="form-control my-2"
                      placeholder="Teléfono"
                    />
                    <input
                      name="Legajo"
                      type="text"
                      class="form-control my-2"
                      placeholder="Legajo"
                    />
                  </div>
                </div>
              </form>
            </div>
            <div class="card-footer text-right">
              <button class="btn btn-primary">Guardar</button>
            </div>
          </div>
        </div>
        <div class="col">
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
                    <select class="custom-select" name="Filtro" id="">
                        <option value="1">Nombre</option>
                        <option value="2">Apellido</option>
                        <option value="3">DNI</option>
                        <option value="4">Legajo</option>
                        <option value="5">Dirección</option>
                        <option value="6">Localidad</option>
                        <option value="7">Nacionalidad</option>
                        <option value="8">Email</option>
                      </select>
                </div>
                <div class="col">
                    <button class="btn btn-dark" type="submit">Buscar</button>
                </div>
              </div>
              <table class="table table-dark">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido</th>
                    <th scope="col">DNI</th>
                    <th scope="col">Fecha de Nacimiento</th>
                    <th scope="col">Dirección</th>
                    <th scope="col">Localidad</th>
                    <th scope="col">Nacionalidad</th>
                    <th scope="col">Email</th>
                    <th scope="col">Teléfono</th>
                    <th scope="col">Editar</th>
                    <th scope="col">Eliminar</th>
                  </tr>
                </thead>
                <tbody class="text-center">
                  <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>11111111</td>
                    <td>18/12/1990</td>
                    <td>Avenida siempre viva 123</td>
                    <td>Springfield</td>
                    <td>Argentina</td>
                    <td>mark@otto.com</td>
                    <td>1122334455</td>
                    <td>
                      <button class="btn btn-success">
                        <i class="fas fa-edit"></i>
                      </button>
                    </td>
                    <td>
                      <button class="btn btn-danger">
                        <i class="fas fa-trash-alt"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>11111111</td>
                    <td>18/12/1990</td>
                    <td>Avenida siempre viva 123</td>
                    <td>Springfield</td>
                    <td>Argentina</td>
                    <td>mark@otto.com</td>
                    <td>1122334455</td>
                    <td>
                      <button class="btn btn-success">
                        <i class="fas fa-edit"></i>
                      </button>
                    </td>
                    <td>
                      <button class="btn btn-danger">
                        <i class="fas fa-trash-alt"></i>
                      </button>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>11111111</td>
                    <td>18/12/1990</td>
                    <td>Avenida siempre viva 123</td>
                    <td>Springfield</td>
                    <td>Argentina</td>
                    <td>mark@otto.com</td>
                    <td>1122334455</td>
                    <td>
                      <button class="btn btn-success">
                        <i class="fas fa-edit"></i>
                      </button>
                    </td>
                    <td>
                      <button class="btn btn-danger">
                        <i class="fas fa-trash-alt"></i>
                      </button>
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
          </div>
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