<%@ page import="Dominio.Administrador"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous" />
    <!-- fontawesome icon -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
        integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous" />
<link rel="icon" type="image/png" href="./utn.ico" />
    <style>
        .w-20{
            width: 20%;
        }
    </style>

<title>UTN-TUP</title>
</head>
<body class="bg-primary">

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
	
	<jsp:include page="./HTML/InicioAdministrador.html"></jsp:include>
	
	<jsp:include page="./HTML/Footer.html"></jsp:include>
	
	<jsp:include page="./HTML/Scripts.html"></jsp:include>

</body>
</html>