<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="bootstrap.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="css/principal.css">
<link rel="shortcut icon" href="img/favicon.ico" />

<title>Curso de Nivelamento</title>

</head>
<body>
	<c:choose>
		<c:when test="${not empty aluno}">
			<!--- Menu ------------------------------------>
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<a class="navbar-brand" href="cursos.jsp"><img class="logo"
					src="img/Falcon IT-01.png"></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNavAltMarkup"
					aria-controls="navbarNavAltMarkup" aria-expanded="false"
					aria-label="Toggle navigation">
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
						<p>Seja bem-vindo, ${aluno.nome}!</p>
					</div>
				</div>
			</nav>

		</c:when>
		<c:otherwise>
				<a href="index.jsp">Voltar para tela de login.</a>
			</c:otherwise>
	</c:choose>
	<!--------------------------------------------------------------------------------------------------------->
	<%@include file="bannerPrincipal.jsp"%>
	<!-- Seção Principal -->

	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card-deck">
					<div class="card">
						<img src="img/mat 02.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Matemática</h5>
							<p class="card-text">A Matemática é uma ciência que relaciona
								a lógica com situações práticas habituais. Ela desenvolve uma
								constante busca pela veracidade dos fatos por meio de técnicas
								precisas e exatas.</p>
							<a href="conteudoMatematica.jsp" class="btn btn-primary">Saiba
								mais...</a>
						</div>
					</div>

					<div class="card">
						<img src="img/ABC 01.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Português</h5>
							<p class="card-text">O estudo da gramática da língua
								portuguesa, que é a averiguação da correspondência entre o que
								se fala ou escreve e as normas ou leis vigentes para o uso da
								comunicação de forma culta, polida.</p>
							<a href="construcao.jsp" class="btn btn-primary">Saiba
								mais...</a>
						</div>
					</div>

					<div class="card">
						<img src="img/Log 01.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Lógica de Programação</h5>
							<p class="card-text">A Lógica de Programação é um paradigma
								de programação que faz uso da lógica matemática. Tornando a
								lógica uma ferramenta eficaz para o desenvolvimento de teorias.</p>
							<a href="construcao.jsp" class="btn btn-primary">Saiba
								mais...</a>
						</div>
					</div>
				</div>

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
</body>
</html>