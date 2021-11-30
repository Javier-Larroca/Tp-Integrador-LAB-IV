<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		request.getSession().removeAttribute("usuario");
	%>

	<div class="container-fluid bg-primary text-light">
			<div class="row vh-100 justify-content-center align-content-center">
				<div class="col-6">
					<h2 class="h1 text-center">ERROR 404 <i class="fas fa-exclamation-triangle"></i></h2>
					<%
						request.getSession().removeAttribute("usuario");
					%>
					<div class="card bg-dark">
						<div class="card-header">Error</div>
						<div class="card-body">
							No tiene permiso para acceder
						</div>
						<div class="card-footer text-center">
							<a href="Login.jsp" class="btn btn-info">Volver a Inicio</a>
						</div>
					</div>
				</div>
			</div>
		</div>

</body>
</html>