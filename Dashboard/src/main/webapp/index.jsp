<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard - Painel ADM</title>



<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">



<style>
.cliente {
	box-shadow: 5px 5px 5px -1px rgba(94, 94, 94);
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

.card-style-yellow {
	box-shadow: 12px 16px 21px -1px rgba(186, 140, 0);
}

.card-style-black {
	box-shadow: 12px 16px 21px -1px rgba(94, 94, 94);
}

.card-style-white {
	box-shadow: 12px 16px 21px -1px rgba(181, 181, 181);
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

<link href="./dashboard.css" rel="stylesheet" />

</head>
<body>

	<header
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">DevCars</a>
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<input class="form-control form-control-dark w-100" type="text"
			placeholder="Pesquisar" aria-label="Search">
		<div class="navbar-nav">

			<div class="nav-item text-nowrap">
				<a class="nav-link px-3" href="./login.jsp">LOGIN</a>
			</div>
		</div>
	</header>

	<!--  BEGIN SIDEBAR -->


	<div class="container-fluid">
		<div class="row">


			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">

				<div class="position-sticky pt-3">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link" href="index.jsp">
								<form action="ServletIndex" method="post">
									<button type="submit" class="btn">
										<span data-feather="home"></span> HOME
									</button>
								</form>
						</a></li>

						<li class="nav-item"><a class="nav-link" href="veiculo.jsp">
								<form action="ServletVeiculo" method="post">
									<button type="submit" class="btn">
										<span data-feather="file"></span> VEÍCULO
									</button>
								</form>
						</a></li>

						<li class="nav-item"><a class="nav-link" href="cliente.jsp">
								<form action="ServletCliente" method="post">
									<button type="submit" class="btn">
										<span data-feather="shopping-cart"></span> CLIENTE
									</button>
								</form>
						</a></li>

						<li class="nav-item"><a class="nav-link"
							href="fornecedor.jsp">
								<form action="ServletFornecedor" method="post">
									<button type="submit" class="btn">
										<span data-feather="users"></span> FORNECEDOR
									</button>
								</form>
						</a></li>

						<li class="nav-item"><a class="nav-link" href="pedido.jsp">
								<form action="ServletPedido" method="post">
									<button type="submit" class="btn">
										<span data-feather="bar-chart-2"></span> PEDIDO
									</button>
								</form>
						</a></li>

						<li class="nav-item"><a class="nav-link"
							href="agendamento.jsp">
								<form action="ServletAgendamento" method="post">
									<button type="submit" class="btn">
										<span data-feather="layers"></span> AGENDAMENTO
									</button>
								</form>
						</a></li>

					</ul>
				</div>
			</nav>


		</div>

		<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
			<div
				class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
				<h1 class="h2">DASHBOARD</h1>
				<img alt="logo-dev-cars" src="logo-rev01.jpeg" width="120"
					height="120" style="border-radius: 60px;" />
			</div>

			<div class="row row-cols-1 row-cols-md-3 g-4"
				style="justify-content: center; margin: 20px;">
				<div class="card text-center col cliente"
					style="width: 18rem; margin-bottom: 10px; border-radius: 80px; margin-right: 50px; background-color: black; color: white;">
					<div class="card-body">
						<h5 class="card-title">Clientes Cadastrados</h5>
						<p class="card-text fs-1">
							<c:out value="${contagem_clientes}"></c:out>
						</p>
						<button class="btn bg-light" style="border-radius: 80px;">
							<a href="cliente.jsp" class="card-link"
								style="color: black; text-decoration: none;">Ver Clientes</a>
						</button>
					</div>
				</div>
				<div class="card text-center col veiculo"
					style="width: 18rem; margin-bottom: 10px; border-radius: 80px; background-color: black; color: white;">
					<div class="card-body">
						<h5 class="card-title">Veículos Cadastrados</h5>
						<p class="card-text fs-1">
							<c:out value="${contagem_veiculos}"></c:out>
						</p>
						<button class="btn bg-light" style="border-radius: 80px;">
							<a href="veiculo.jsp" class="card-link"
								style="color: black; text-decoration: none;">Ver Veículos</a>
						</button>
					</div>
				</div>
			</div>
			<div class="row row-cols-1 row-cols-md-3 g-4">
				<div class="col">
					<div class="card text-dark bg-warning mb-3 card-style-yellow"
						style="max-width: 18rem;">
						<div class="card-body">
							<h5 class="card-title">Missão</h5>
							<p class="card-text">Ser uma organização, capaz de realizar
								conexão com o desejo e satisfação do cliente. Onde em cada venda
								possamos fazer parte do sonho do consumidor, do colaborador e do
								fornecedor. E acima de tudo, proporcionar ao maior número de
								pessoas uma experiência memorável e excelência em produtos e
								serviços, sendo referência em gestão do negócio de automotivos
								de luxo.</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card text-white bg-dark mb-3 card-style-black"
						style="max-width: 18rem;">
						<div class="card-header">Recados</div>
						<div class="card-body">
							<h5 class="card-title">Implementação de novos veículos</h5>
							<p class="card-text">A partir do dia 15/02 (terça-feira)
								estaremos adicionando novos veículos ao nosso catálogo. Aguardem
								novos direcionamentos.</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card text-dark bg-light mb-3 card-style-white"
						style="max-width: 18rem;">
						<div class="card-body">
							<h5 class="card-title">Motivação</h5>
							<p class="card-text">Procure pensar sempre no que te inspira
								e use-o como combustível para alcançar seus objetivos. E
								lembre-se: até o maior dos prédios começa no chão.</p>
						</div>
					</div>
				</div>
			</div>
			<br>
			<h2>Colaboradores</h2>
			<div class="table-responsive">
				<table class="table table-striped table-sm">
					<thead>
						<tr>
							<th scope="col">Matrícula</th>
							<th scope="col">Perfil</th>
							<th scope="col">Nome</th>
							<th scope="col">Cargo</th>
							<th scope="col">Email</th>
							<th scope="col">Login</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1001</td>
							<td><img alt="" src="augusto.jpeg" widht="50" height="50"
								style="border-radius: 50px;"></td>
							<td>Augusto Meireles</td>
							<td>Developer</td>
							<td>augustomeireles@devcars.com</td>
							<td>AuguMeireles</td>
						</tr>
						<tr>
							<td>1002</td>
							<td><img alt="" src="guilherme.jpeg" widht="50" height="50"
								style="border-radius: 50px;"></td>
							<td>Guilherme Viana</td>
							<td>Developer</td>
							<td>guilhermeviana@devcars.com</td>
							<td>GuilViana</td>
						</tr>
						<tr>
							<td>1003</td>
							<td><img alt="" src="larissa.jpeg" widht="50" height="50"
								style="border-radius: 50px;"></td>
							<td>Larissa Bandeira</td>
							<td>Developer</td>
							<td>larissabandeira@devcars.com</td>
							<td>LariBandeira</td>
						</tr>
						<tr>
							<td>1004</td>
							<td><img alt="" src="lidia.jpeg" widht="50" height="50"
								style="border-radius: 50px;"></td>
							<td>Lidia Maciel</td>
							<td>Developer</td>
							<td>lidiamaciel@devcars.com</td>
							<td>LidiMaciel</td>
						</tr>
						<tr>
							<td>1005</td>
							<td><img alt="" src="wanderson.jpeg" widht="50" height="50"
								style="border-radius: 50px;"></td>
							<td>Wanderson Thiers</td>
							<td>Developer</td>
							<td>wandersonthiers@devcars.com</td>
							<td>WandThiers</td>
						</tr>
					</tbody>
				</table>
			</div>
		</main>
	</div>
	</div>

	<script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
		integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
		integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
		crossorigin="anonymous"></script>
	<script src="./dashboard.js"></script>
</body>
</html>