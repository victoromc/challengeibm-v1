<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@include file="bootstrap.jsp"%>


<link rel="stylesheet" href="css/cadastro.css" />
<link rel="stylesheet" href="css/principal.css" />
<link rel="shortcut icon" href="img/favicon.ico" />

<title>Excluir Cadastro</title>
</head>
<body>
	<!--- Menu ------------------------------------>
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
				<a class="nav-item nav-link" href="conteudoMatematica.jsp">Matemática</a>
				<a class="nav-item nav-link" href="construcao.jsp">Português</a> <a
					class="nav-item nav-link" href="construcao.jsp">Lógica de
					Programação</a>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false">Perfil</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="alterarPerfil.jsp">Alterar</a> <a
							class="dropdown-item" href="excluirPerfil.jsp">Excluir</a>
						<div class="dropdown-divider"></div>
						<a class="nav-item nav-link" href="controller?tarefa=Logout">Logout</a>

					</div></li>
			</div>
		</div>
	</nav>

	<!--------------------------------------------------------------------------------------------------------->
	<%@include file="bannerPrincipal.jsp"%>
	<!-- Seção Principal -->

	<div class="container">
		<div class="row">
			<div class="col">
				</br>
				<h1>Deseja excluir?</h1>
				<!-- FORM DE CADASTRO  -->
				<form action="controller" method="post" name="form">
					<div class="form-row">

						<div class="form-group col-md-6">
							<label for="inputAddress2">Usuário</label> <input type="text"
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

					<div class="container">
						<div class="row">
							<div class="col-md-6"></div>

							<div class="col-md-6">
								<button id="btnExcluir" type="submit" class="btn btn-primary" name="tarefa"
									value="Excluir">Excluir</button>
							</div>
						</div>
					</div>
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