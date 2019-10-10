<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/cadastro.css" />
<link rel="stylesheet" href="css/principal.css" />

<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/bootstrap-grid.css" />
<link rel="stylesheet" href="css/bootstrap-reboot.css" />

<title>Excluir Cadastro</title>
</head>
<body>
	<!--- Menu ------------------------------------>
	<div id="voltar-top"></div>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="cursos.jsp"><img class="logo"
			src="img/Falcon IT-01.png"></a>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">

			<div class="navbar-nav">
				<div class="navbar-nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
						role="button" aria-haspopup="true" aria-expanded="false">Matem�tica</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#1grau">Fun��o 1� Grau</a> <a
								class="dropdown-item" href="#startup">Startup</a> <a
								class="dropdown-item" href="#2grau">Fun��o de 2� Grau</a> <a
								class="dropdown-item" href="#temperatura">Temperatura</a> <a
								class="dropdown-item" href="#mol">Mol</a>
							<div class="dropdown-divider"></div>

						</div>
				</div>
				</li> <a class="nav-item nav-link" href="construcao.jsp">Portugu�s</a> <a
					class="nav-item nav-link" href="construcao.jsp">L�gica de
					Programa��o</a>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false">Perfil</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Alterar</a> <a
							class="dropdown-item" href="excluirPerfil.jsp">Excluir</a>
						<div class="dropdown-divider"></div>


					</div>
			</div>
			<a class="navbar-brand" onclick="return play('chatbot');" href="#"><img
				src="img/microfone.png"></a>
	</nav>

	<!--------------------------------------------------------------------------------------------------------->
	<!-- Banner Principal  -->

	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/mat 01.jpg" class="d-block w-100" alt="..." />
			</div>
			<div class="carousel-item">
				<img src="img/ABC 02.jpg" class="d-block w-100" alt="..." />
			</div>
			<div class="carousel-item">
				<img src="img/Log 02.jpg" class="d-block w-100" alt="..." />
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<!---------------------------------------------------------------------------------------------------------------------------------------->
	<!-- Se��o Principal -->

	<div class="container">
		<div class="row">
			<div class="col">
			</br>
			<h1>Deseja excluir?</h1>
				<!-- FORM DE CADASTRO  -->
				<form action="controller" method="post" name="form">
					<div class="form-row">
					
						<div class="form-group col-md-6">
							<label for="inputAddress2">Usu�rio</label> <input type="text"
								class="form-control" id="rm" placeholder="Entre com seu RM."
								name="rm" required onblur="valida('rm');">
						</div>

						<div class="form-group col-md-6">
							<label for="inputPassword4">Senha</label> <input type="password"
								class="form-control" id="senha" placeholder="Senha" name="senha"
								required onblur="valida('senha')">
						</div>
					</div>

					<br />
					<button type="submit" class="btn btn-primary" name="tarefa"
						value="Excluir">Excluir</button>
				</form>

			</div>
		</div>
	</div>
	
	<!------------------------------------------------------------------------------------------------------------------------------------------------------->

	<footer>
		<p>Falcon IT &copy 2019 Todos os direitos reservados</p>
	</footer>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/validaLogin.js"></script>
	<script type="text/javascript" src="js/validaRM.js"></script>

</body>
</html>