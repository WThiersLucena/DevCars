<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard - Painel ADM</title>

<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
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
				<a class="nav-link px-3" href="#">Sair</a>
			</div>
		</div>
	</header>

	<!--  BEGIN SIDEBAR -->

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light  sidebar collapse ">
				<div class="position-sticky pt-3">
					<ul class="nav flex-column">
						<li class="nav-item mb-1"><a class="nav-link active"
							aria-current="page" href="#"> <span data-feather="home"></span>
								Home
						</a></li>
						<li class="nav-item mt-1 mb-1"><a class="nav-link"
							href="veiculo.jsp"> <svg xmlns="http://www.w3.org/2000/svg"
									width="16" height="16" fill="currentColor" class="bi bi-truck"
									viewBox="0 0 16 16">
  										<path
										d="M0 3.5A1.5 1.5 0 0 1 1.5 2h9A1.5 1.5 0 0 1 12 3.5V5h1.02a1.5 1.5 0 0 1 1.17.563l1.481 1.85a1.5 1.5 0 0 1 .329.938V10.5a1.5 1.5 0 0 1-1.5 1.5H14a2 2 0 1 1-4 0H5a2 2 0 1 1-3.998-.085A1.5 1.5 0 0 1 0 10.5v-7zm1.294 7.456A1.999 1.999 0 0 1 4.732 11h5.536a2.01 2.01 0 0 1 .732-.732V3.5a.5.5 0 0 0-.5-.5h-9a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .294.456zM12 10a2 2 0 0 1 1.732 1h.768a.5.5 0 0 0 .5-.5V8.35a.5.5 0 0 0-.11-.312l-1.48-1.85A.5.5 0 0 0 13.02 6H12v4zm-9 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm9 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z" />
								</svg> Veículos
						</a></li>
						<li class="nav-item mt-1 mb-1"><a class="nav-link"
							href="pedido.jsp"> <svg xmlns="http://www.w3.org/2000/svg"
									width="16" height="16" fill="currentColor"
									class="bi bi-cart-check-fill" viewBox="0 0 16 16">
 										 <path
										d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm-1.646-7.646-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L8 8.293l2.646-2.647a.5.5 0 0 1 .708.708z" />
								</svg> Pedidos
						</a></li>
						<li class="nav-item mt-1 mb-1"><a class="nav-link"
							href="cliente.jsp"> <svg xmlns="http://www.w3.org/2000/svg"
									width="16" height="16" fill="currentColor"
									class="bi bi-people-fill" viewBox="0 0 16 16">
  										<path
										d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
  										<path fill-rule="evenodd"
										d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z" />
 										<path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z" />
								</svg> Clientes
						</a></li>
						<li class="nav-item mt-1 mb-1"><a class="nav-link"
							href="fornecedor.jsp"> <svg
									xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-box" viewBox="0 0 16 16">
  										<path
										d="M8.186 1.113a.5.5 0 0 0-.372 0L1.846 3.5 8 5.961 14.154 3.5 8.186 1.113zM15 4.239l-6.5 2.6v7.922l6.5-2.6V4.24zM7.5 14.762V6.838L1 4.239v7.923l6.5 2.6zM7.443.184a1.5 1.5 0 0 1 1.114 0l7.129 2.852A.5.5 0 0 1 16 3.5v8.662a1 1 0 0 1-.629.928l-7.185 2.874a.5.5 0 0 1-.372 0L.63 13.09a1 1 0 0 1-.63-.928V3.5a.5.5 0 0 1 .314-.464L7.443.184z" />
								</svg> Fornecedores
						</a></li>
						<li class="nav-item mt-1 mb-1"><a class="nav-link"
							href="agendamento.jsp"> <svg
									xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-calendar-event"
									viewBox="0 0 16 16">
  									<path
										d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" />
  									<path
										d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
								</svg> Agendamentos
						</a></li>
					</ul>
				</div>
			</nav>
			<!--  END SIDEBAR -->

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">Dashboard</h1>
					<img alt="logo-dev-cars" src="logo-rev01.jpeg" width="120" height="120"  style="border-radius: 60px;"/>
				</div>
				
				<div class="row row-cols-1 row-cols-md-3 g-4">
					<div class="col">
						<div class="card text-dark bg-warning mb-3"
							style="max-width: 18rem;">
							<div class="card-body">
								<h5 class="card-title">Missão</h5>
								<p class="card-text">
								Ser uma organização, capaz de realizar
									conexão com o desejo e satisfação do cliente. Onde em cada
									venda possamos fazer parte do sonho do consumidor, do
									colaborador e do fornecedor. E acima de tudo, proporcionar ao
									maior número de pessoas uma experiência memorável e excelência
									em produtos e serviços, sendo referência em gestão do negócio
									de automotivos de luxo.
								</p>
							</div>
						</div>
					</div>
						<div class="col">
						<div class="card text-white bg-dark mb-3"
							style="max-width: 18rem;">
							<div class="card-header">Recados</div>
							<div class="card-body">
								<h5 class="card-title">Implementação de novos veículos</h5>
								<p class="card-text">
								A partir do dia 15/02 (terça-feira) estaremos adicionando novos veículos ao nosso catálogo. Aguardem novos direcionamentos.
								</p>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card text-dark bg-light mb-3"
							style="max-width: 18rem;">
							<div class="card-body">
								<h5 class="card-title">Motivação</h5>
								<p class="card-text">
								Procure pensar sempre no que te inspira e use-o como combustível para alcançar seus objetivos. E lembre-se:  até o maior dos prédios começa no chão.
								</p>
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
								<td><img alt="" src="augusto.jpeg" widht="50" height="50" style="border-radius: 50px;"></td>
								<td>Augusto Meireles</td>
								<td>Developer</td>
								<td>augustomeireles@devcars.com</td>
								<td>AuguMeireles</td>
							</tr>
							<tr>
								<td>1002</td>
								<td><img alt="" src="logo-rev01.jpeg" widht="50" height="50" style="border-radius: 50px;"></td>
								<td>Guilherme Viana</td>
								<td>Developer</td>
								<td>guilhermeviana@devcars.com</td>
								<td>GuilViana</td>
							</tr>
							<tr>
								<td>1003</td>
								<td><img alt="" src="larissa.jpeg" widht="50" height="50" style="border-radius: 50px;"></td>
								<td>Larissa Bandeira</td>
								<td>Developer</td>
								<td>larissabandeira@devcars.com</td>
								<td>LariBandeira</td>
							</tr>
							<tr>
								<td>1004</td>
								<td><img alt="" src="lidia.jpeg" widht="50" height="50" style="border-radius: 50px;"></td>
								<td>Lidia Maciel</td>
								<td>Developer</td>
								<td>lidiamaciel@devcars.com</td>
								<td>LidiMaciel</td>
							</tr>
							<tr>
								<td>1005</td>
								<td><img alt="" src="wanderson.jpeg" widht="50" height="50" style="border-radius: 50px;"></td>
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