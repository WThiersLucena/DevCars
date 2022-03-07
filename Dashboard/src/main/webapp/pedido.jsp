<%@ page language="java" contentType="text/html; charset=ISO-8859-1
"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv=”Content-Type” content=”text/html; charset=utf-8″>

<title>Pedido</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Questrial&display=swap');

body {
	font-family: 'Questrial', sans-serif;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

.accordion-button {
	-webkit-box-shadow: 11px 11px 28px 10px rgba(191, 161, 63, 0.45);
	box-shadow: 2px 2px 2px 2px rgba(191, 161, 63, 0.45);
}

.accordion-button:not(.collapsed) {
	color: #000;
	background-color: #fff;
	border-color: #fff
}

.accordion-button:focus {
	border-color: #F0CA4F;
	box-shadow: none
}

.ac-header:not(.collapsed) {
	color: #fff;
	background-color: #F0CA4F;
}

.ac-header {
	color: #fff;
	background-color: #F0CA4F;
}

.fw-bolder {
	text-shadow: 3px 2px 3px rgba(150, 150, 150, 0.68);
}

h3 {
	font-family: Arial, Helvetica, Verdana, sans-serif;
	margin-bottom: 8px;
	font-size: 18px;
	font-weight: bold
}

p {
	margin-bottom: 4px
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

<link href="./dashboard.css" rel="stylesheet" />

<!-- <meta name="viewport" content="width=device-width, initial-scale=1">Linha responsividade -->



<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>


	<header
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="index.jsp">DevCars</a>
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
										<span data-feather="file"></span> VEICULO
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

		<!--  END SIDEBAR -->



		<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 bg-dark pb-2">
			<div
				class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
				<h1 class="h2 text-light">LISTA PEDIDOS</h1>
			</div>

			<div>
				<c:forEach var="pedidos" items="${listPedido}">
					<input type="hidden" name="id" value="${pedidos.cod_pedido}" />

					<!-- inicio acordeon -->
					<div
						class="accordion accordion-flush border rounded m-3 shadow rounded-3 ac-style "
						id="accordionFlushExample">
						<div class="accordion-item">
							<h2 class="accordion-header "
								id="flush-heading-${pedidos.cod_pedido}">
								<button class="accordion-button collapsed ac-header"
									type="button" data-bs-toggle="collapse"
									data-bs-target="#flush-collapse-${pedidos.cod_pedido}"
									aria-expanded="false"
									aria-controls="flush-collapse-${pedidos.cod_pedido}">

									<div class="row col-12 col-md-12 col-lg-12">
										<div class="col-3 text-start fw-bolder">
											<p>
												#
												<c:out value="${pedidos.cod_pedido}" />
											</p>
										</div>

										<div class="col-3 text-start fw-bolder">
											<p>
												VALOR TOTAL :
												<c:out value="${pedidos.valor_total_pedido}" />
											</p>
										</div>



										<div class="col-3 text-start fw-bolder">
											<p>
												DATA DE EMISSAO :
												<fmt:formatDate value="${pedidos.data_pedido}"
													pattern="dd/MM/yyyy" />

											</p>
										</div>


										<div class="col-3 text-start fw-bolder">
											<p>
												STATUS :
												<c:out value="${pedidos.status}" />
											</p>
										</div>

									</div>

								</button>
							</h2>
							<div id="flush-collapse-${pedidos.cod_pedido}"
								class="accordion-collapse collapse"
								aria-labelledby="flush-heading-${pedidos.cod_pedido}"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<div class="row">
										<div class="col-md">
											<div class="cliente">
												
												<p class="">
													VALOR TOTAL PEDIDO: 
													<c:out value="${pedidos.valor_total_pedido}" />
												</p>
												
												
												<p class="">
													DATA PEDIDO: 
													<c:out value="${pedidos.data_pedido}" />
												</p>
												
												<p class="">
													NOME CLIENTE: 
													<c:out value="${pedidos.nome_cliente}" />
													<c:out value="${pedidos.razao_social}" />
												</p>
												
												
												<p class="">
													NUMERO DOCUMENTO: 
													<c:out value="${pedidos.numero_documento}" />
												</p>
												
												<p class="">
													TELEFONE CLIENTE: 
													<c:out value="${pedidos.telefone_cliente}" />
												</p>
												
												
												<p class="">
													EMAIL CLIENTE: 
													<c:out value="${pedidos.email_cliente}" />
												</p>
												
												
												<p class="">
													CEP ENDERECO: 
													<c:out value="${pedidos.cep_endereco}" />
												</p>
												
												<p class="">
													RUA ENDERECO: 
													<c:out value="${pedidos.rua_endereco}" />
												</p>
												
												<p class="">
													NUMERO ENDERECO: 
													<c:out value="${pedidos.numero_endereco}" />
												</p>
												
												<p class="">
													BAIRRO: 
													<c:out value="${pedidos.bairro}" />
												</p>
												
												<p class="">
													CIDADE: 
													<c:out value="${pedidos.cidade}" />
												</p>
												
												
												<p class="">
													UF: 
													<c:out value="${pedidos.uf}" />
												</p>
												
												
												<p class="">
													DESCRICAO FORMA PAGAMENTO: 
													<c:out value="${pedidos.descricao_forma_pagamento}" />
												</p>
												
												
												<p class="">
													VALOR FRETE: 
													<c:out value="${pedidos.valor_frete}" />
												</p>
												
												<p class="">
													UNIDADE FEDERATIVA: 
													<c:out value="${pedidos.unidade_federativa}" />
												</p>
												
												<p class="">
													STATUS: 
													<c:out value="${pedidos.status}" />
												</p>
												
												
												<p class="">
													MARCA VEICULO: 
													<c:out value="${pedidos.marca_veiculo}" />
												</p>
												
												<p class="">
													MODELO_VEICULO: 
													<c:out value="${pedidos.modelo_veiculo}" />
												</p>
												
												<p class="">
													ANO VEICULO: 
													<c:out value="${pedidos.ano_veiculo}" />
												</p>
												
												<p class="">
													NUMERO CHASSI:
													<c:out value="${pedidos.numero_chassi}" />
												</p>
												
												<p class="">
													PRECO VEICULO: 
													<c:out value="${pedidos.preco_veiculo}" />
												</p>
												
												<p class="">
													NOME COR: 
													<c:out value="${pedidos.nome_cor}" />
												</p>
												
												<p class="">
													MOTOR_VEICULO: 
													<c:out value="${pedidos.motor_veiculo}" />
												</p>
												
												<p class="">
													POTENCIA: 
													<c:out value="${pedidos.potencia_cv}" />
												</p>
												
												<p class="">
													TIPO COMBUSTIVEL: 
													<c:out value="${pedidos.tipo_combustivel}" />
												</p>
												
												<p class="">
													CAMBIO: 
													<c:out value="${pedidos.cambio}" />
												</p>
												
												
												
												
<!-- 												<p class=""> -->
<!-- 													NOME : -->
<%-- 													<c:out value="${pedidos.nome_cliente}" /> --%>

<!-- 												</p> -->



												<c:set var="doc" value="${pedidos.numero_documento}" />
												<c:choose>
													<c:when test="${fn:length(doc) == 11}">

														<span>CPF: </span>
														<span class="exampleInputCpf"><c:out
																value="${pedidos.numero_documento}" /></span>
													</c:when>

													<c:otherwise>
														<span>CNPJ: </span>
														<span class="exampleInputCnpj"><c:out
																value="${pedidos.numero_documento}" /></span>
													</c:otherwise>
												</c:choose>


<!-- 												<p class="exampleInputTelefone"> -->
<!-- 													TELEFONE: -->
<%-- 													<c:out value="${pedidos.telefone_cliente}" /> --%>
<!-- 												</p> -->


<!-- 												<p class=""> -->
<!-- 													FORMA DE PAGAMENTO: -->
<%-- 													<c:out value="${pedidos.descricao_forma_pagamento}" /> --%>
<!-- 												</p> -->


<!-- 												<p class=""> -->
<!-- 													VALOR FRETE: -->
<%-- 													<c:out value="${pedidos.valor_frete}" /> --%>
<!-- 												</p> -->

<!-- 												<p class=""> -->
<!-- 													RAZÃO SOCIAL: -->
<%-- 													<c:out value="${pedidos.razao_social}" /> --%>
<!-- 												</p> -->



<!-- 												<p class=""> -->
<!-- 													EMAIL : -->
<%-- 													<c:out value="${pedidos.email_cliente}" /> --%>
<!-- 												</p> -->

											</div>
										</div>




									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- fim acordeon -->
				</c:forEach>
			</div>
		</main>


	</div>


	<script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
	<script src="./dashboard.js"></script>


	<!-- jQuery Mask -->
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"
		integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
		crossorigin="anonymous"></script>

	<script type="text/javascript" src="jquery.mask.js"></script>



	<script type="text/javascript">
		$(document).ready(function() {
			//$(".exampleInputTelefone1").mask("TELEFONE: (00) 00000-0000");
			$(".exampleInputTelefone").mask("TELEFONE: (00) 0000-00009");
			//$('.exampleInputChassi').mask('A.AA.AAAAAAA.A.AAAAA');

			$('.exampleInputCpf').mask('000.000.000-00', {
				reverse : true
			});
			$('.exampleInputCnpj').mask('00.000.000/0000-00', {
				reverse : true
			});
		});
	</script>




	<script src="./dashboard.js"></script>
</body>
</html>