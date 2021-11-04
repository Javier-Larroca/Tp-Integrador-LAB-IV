<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
			rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
			integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
			crossorigin="anonymous"
		/>
		<link rel="icon" type="image/png" href="./utn.ico" />
<title>UTN-TUP</title>
</head>
<body>

<div class="container-fluid bg-primary text-light">
			<div class="vh-100 row justify-content-center align-items-center">
				<div class="col-md-4">
					<div class="card bg-dark p-3">
						<div class="card-body">
							<h4 class="card-title text-center">Sistema Gestión Educativa</h4>
							<div
								class="alert alert-warning alert-dismissible fade show"
								role="alert"
							>
								<strong>Alerta de algo!</strong> mensaje mas chico
								<button
									type="button"
									class="close"
									data-dismiss="alert"
									aria-label="Close"
								>
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<form action="" method="" class="needs-validation" novalidate>
								<div class="form-group">
									<label for="validationEmail">Email</label>
									<input
										type="email"
										class="form-control"
										id="validationEmail"
										required
									/>
								</div>
								<div class="form-group">
									<label for="validationPassword">Password</label>
									<input
										type="password"
										class="form-control"
										id="validationPassword"
										required
									/>
								</div>
								<button type="submit" class="btn btn-primary">Iniciar Sesión</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

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

		<script>
			// Example starter JavaScript for disabling form submissions if there are invalid fields
			(function () {
				"use strict";
				window.addEventListener(
					"load",
					function () {
						// Fetch all the forms we want to apply custom Bootstrap validation styles to
						var forms = document.getElementsByClassName("needs-validation");
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(
							forms,
							function (form) {
								form.addEventListener(
									"submit",
									function (event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add("was-validated");
									},
									false
								);
							}
						);
					},
					false
				);
			})();
		</script>

</body>
</html>