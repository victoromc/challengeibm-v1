<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@include file="bootstrap.jsp" %>

<link rel="stylesheet" href="css/cadastro.css">
<link rel="stylesheet" type="text/css" href="css/formulario.css" />
<link rel="shortcut icon" href="img/favicon.ico" />

<title>Alterar Perfil</title>
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

				<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false">Perfil</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="alterarPerfil.jsp">Alterar</a> 
						<a class="dropdown-item" href="excluirPerfil.jsp">Excluir</a>
						<div class="dropdown-divider"></div>
						<a class="nav-item nav-link" href="controller?tarefa=Logout">Logout</a>

					</div></li>
			</div>
		</div>
	</nav>

	<!--------------------------------------------------------------------------------------------------------->
	<%@include file="bannerPrincipal.jsp" %>
	<!-- Seção Principal -->

	<div class="container">
		<div class="row">
			<div class="col">
				<!-- FORM DE CADASTRO  -->
				<form name="form" action="controller" method="post">
					<div class="form-row">


						<div class="form-group col-md-6">
							<label for="inputAddress">Nome</label> <input
								class="form-control" placeholder="Nome" name="nome"
								id="form_name" required onblur="valida('nome');"  value=${aluno.nome }>
						</div>

						<div class="form-group col-md-6">
							<label for="inputAddress">Sobrenome</label> <input
								class="form-control" placeholder="Sobrenome" name="sobrenome"
								id="form_name" required onblur="valida('sobrenome');" value=${aluno.sobrenome }>
						</div>

						<div class="form-group col-md-6">
							<label>CPF/CNPJ</label> <input id="cpfOuCnpj" required
								name=cpf type="text" class="form-control" placeholder="CPF/CNPJ" readonly="true" value=${aluno.cpf }>
						</div>

						
						<div class="form-group col-md-6">
							<label for="inputEmail4">Email</label> <input
								class="form-control" id="inputEmail4" name="email"
								placeholder="email@dominio.com.br" required
								onblur="valida('email'); validacaoEmail(form.email);"  value=${aluno.email }>
						</div>

						<div class="form-group col-md-6">
							<label for="inputAddress2">RM</label> <input class="form-control"
								placeholder="RM" name="rm" id="rm" required
								onblur="valida('rm');" readonly="true" value=${aluno.rm }>
						</div>

						<div class="form-group col-md-6">
							<label for="inputPassword4">Senha</label> <input
								class="form-control" placeholder="Senha" name="senha" id="senha"
								type="password" required onblur="valida('senha');"  value=${aluno.senha }>

						</div>


						<div class="form-group col-md-6">
							<label>Celular</label> <input type="text" class="form-control"
								placeholder="(DD)9.9999-9999" id="telefone" required
								name="telefone" value=${aluno.telefone } >
						</div>

						<div class="form-group col-md-6">
							<label>CEP</label> <input id="cep" placeholder="Digite seu CEP"
								required name="cep" class="form-control" class="mb-3"
								pattern="\d*" maxlength="9" type="text" value=${aluno.cep } autofocus>
						</div>

						<div class="form-group col-md-6">
							<label>Logradouro</label> <input id="logradouro" type="text" name="logr"
								class="form-control">
						</div>
						

						<div class="form-group col-md-6">
							<label>Nº</label> <input id="numero" type="text" required
								placeholder="123" name="n" class="form-control" value=${aluno.numero }>
						</div>

						<div class="form-group col-md-6">
							<label>Bairro</label> <input id="bairro" type="text"
								name="bairro" class="form-control">
						</div>

						<div class="form-group col-md-6">
							<label>Cidade</label> <input id="cidade" type="text"
								name="cidade" class="form-control">
						</div>

						<div class="form-group col-md-6">
							<label>UF</label> <input id="uf" type="text" name="uf"
								class="form-control">
						</div>


						<div class="form-group col-md-3">
							<button id="btn" class="btn btn-primary" name="tarefa"
								value="Alterar">Alterar</button>

						</div>

						<div class="form-group col-md-3">
							<a class="tiraLink espaco" href="index.jsp">Voltar para Login</a>

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
	
	
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
		
	<script type="text/javascript" src="js/validaCampo.js"></script>
	<script src="js/cep.js"></script>
	<script src="js/mask-cpf.js"></script>
	<!-- <script src="js/mask.js"></script> -->
</body>
</html>