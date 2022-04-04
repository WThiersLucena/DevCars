<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Agendamentos</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">

<style>
@import url('https://fonts.googleapis.com/css2?family=Questrial&display=swap');

body{
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

.container-style{
	border-left: 2px solid #d9d9d9;
	border-radius: 4px;
	margin-bottom: 15px;
}


h3 {
	font-family: Arial, Helvetica, Verdana, sans-serif;
	margin-bottom: 8px;
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 5px;
	margin-top: 14px;
	color: #545454;
}

.container-style span{
	color: #7a7a7a;
	text-shadow: 0 1px 1px 0 #959595;
}

.container-style p{
	margin: 0;
	color: #7a7a7a;
	text-shadow: 0 1px 1px 0 #959595;
}

.font-size-09 {
		font-size: 1rem !important;
	}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
	
	.font-size-09 {
		font-size: 0.9rem !important;
	}
}

@media ( max-width : 450px) {
	.accordion-button{
		font-size: 13px;
	}
	
	h3{
		font-size: 14px;
	}
	
	p, span{
		padding-left: 7px;
		font-size: 13px;
	}
	
	.font-size-09 {
		font-size: 1rem !important;
	}
}
</style>

<link href="./dashboard.css" rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<header
		class="navbar navbar-dark sticky-top bg-dark p-0 shadow">
		<a class="navbar-brand col-3 col-md-3 col-lg-2 me-0 px-3" href="#">DevCars</a>
		<button class="navbar-toggler position-absolute d-md-none col-2 col-md-1 col-lg-2 collapsed"
			type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="navbar-nav col-12 col-md-1 col-lg-1">

			<div class="nav-item text-nowrap">
				<a class="nav-link px-3" href="./login.jsp">Sair</a>
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
									<button type="submit" class="btn font-size-09">
										<span data-feather="home"></span> HOME
									</button>
								</form>
						</a></li>

						<li class="nav-item"><a class="nav-link" href="veiculo.jsp">
								<form action="ServletVeiculo" method="post">
									<button type="submit" class="btn font-size-09">
										<span data-feather="file"></span> VEICULO
									</button>
								</form>
						</a></li>

						<li class="nav-item"><a class="nav-link" href="cliente.jsp">
								<form action="ServletCliente" method="post">
									<button type="submit" class="btn font-size-09">
										<span data-feather="shopping-cart"></span> CLIENTE
									</button>
								</form>
						</a></li>

						<li class="nav-item"><a class="nav-link"
							href="fornecedor.jsp">
								<form action="ServletFornecedor" method="post">
									<button type="submit" class="btn font-size-09">
										<span data-feather="users"></span> FORNECEDOR
									</button>
								</form>
						</a></li>

						<li class="nav-item"><a class="nav-link" href="pedido.jsp">
								<form action="ServletPedido" method="post">
									<button type="submit" class="btn font-size-09">
										<span data-feather="bar-chart-2"></span> PEDIDO
									</button>
								</form>
						</a></li>

						<li class="nav-item"><a class="nav-link"
							href="agendamento.jsp">
								<form action="ServletAgendamento" method="post">
									<button type="submit" class="btn font-size-09">
										<span data-feather="layers"></span> AGENDAMENTO
									</button>
								</form>
						</a></li>

					</ul>
				</div>
			</nav>

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 bg-dark">
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2 text-light">LISTA DE AGENDAMENTOS</h1>
				</div>
				<div>
					<c:forEach var="a" items="${agenda}">
						<input type="hidden" name="id" value="${a.cod_agendamento}" />

						<!-- inicio acordeon -->
						<div
							class="accordion accordion-flush border rounded m-3 shadow rounded-3 ac-style"
							id="accordionFlushExample">
							<div class="accordion-item">
								<h2 class="accordion-header "
									id="flush-heading-${a.cod_agendamento}">
									<button class="accordion-button collapsed ac-header"
										type="button" data-bs-toggle="collapse"
										data-bs-target="#flush-collapse-${a.cod_agendamento}"
										aria-expanded="false"
										aria-controls="flush-collapse-${a.cod_agendamento}">

										<div class="row col-12 col-md-12 col-lg-12">
											<div class="d-none d-sm-block col-md-4 text-start fw-bolder">
												<p>
													#
													<c:out value="${a.cod_agendamento}" />
												</p>
											</div>
											

											<div class="col-xs-12 col-md-5 text-start fw-bolder">
												<span class="d-none d-sm-block">Veículo: </span>
												<span><c:out value="${a.marca_veiculo} ${a.modelo_veiculo}  ${a.nome_cor} " />
												</span>
											</div>
											

											<div class="col-xs-12 col-md-3 text-xs-center fw-bolder mt-2">
												<span>
													Data de reserva: 
													</span>
													<span><fmt:formatDate value="${a.data_reserva}"
														pattern="dd/MM/yyyy" />
												</span>
											</div>
											
										</div>

									</button>
								</h2>
								<div id="flush-collapse-${a.cod_agendamento}"
									class="accordion-collapse collapse"
									aria-labelledby="flush-heading-${a.cod_agendamento}"
									data-bs-parent="#accordionFlushExample">
									<div class="accordion-body ps-4 pe-5">
										<div class="row">
										
											<div class="col-12 col-lg-4 container-style">
											
												<div class="cliente">
													<h3 class="">Cliente</h3>
													<p class="">
														NOME:
														<c:out value="${a.nome_cliente}" />
														<c:out value="${a.razao_social}" />
													</p>


													<!-- <p class="exampleInputDocumento">NÚMERO DO DOCUMENTO: <c:out value="${a.numero_documento}" /></p>-->
													<c:set var="doc" value="${a.numero_documento}" />
													<c:choose>
														<c:when test="${fn:length(doc)==11}">

															<span>CPF: </span>
															<span class="exampleInputCpf"><c:out
																	value="${a.numero_documento}" /></span>
														</c:when>

														<c:otherwise>
															<span>CNPJ: </span>
															<span class="exampleInputCnpj"><c:out
																	value="${a.numero_documento}" /></span>
														</c:otherwise>
													</c:choose>

													<p class="">
														EMAIL:
														<c:out value="${a.email_cliente}" />
													</p>

													<!-- <c:choose>
														 <c:when test = "${a.telefone_cliente}.size() = 11">
															<p class="exampleInputTelefone1">TELEFONE: <c:out value="${a.telefone_cliente}" /></p>
														 </c:when>
														 
														 <c:otherwise>
														 	<p class="exampleInputTelefone">TELEFONE: <c:out value="${a.telefone_cliente}" /></p>
														 </c:otherwise>
													 </c:choose>-->
													<p class="exampleInputTelefone">
														TELEFONE:
														<c:out value="${a.telefone_cliente}" />
													</p>
												</div>
												
											</div>


											<div class="col-12 col-lg-5 container-style">
												<h3 class="">Detalhes do veículo</h3>
												<p class="">
													Motor:
													<c:out value="${a.motor_veiculo}" />
												</p>
												<p class="">
													Potência:
													<c:out value="${a.potencia_cv}" />
												</p>
												<p class="">
													Combustível:
													<c:out value="${a.tipo_combustivel}" />
												</p>
												<p class="">
													Câmbio:
													<c:out value="${a.cambio}" />
												</p>

												<span>CHASSI: </span><span class="exampleInputChassi">
													<c:out value="${a.numero_chassi}" />
												</span>
												<div>
													<span class="tex-end"> Valor do veículo: </span>
													<span class="text-start fw-bold"> R$ <fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${a.preco_veiculo}" />
													</span>
												</div>
												
											</div>


											<div class="col-12 col-lg-3 container-style">
												<h3 class="tex-end">Taxa de agendamento:</h3>
												<p class="text-start">
													R$
													<fmt:formatNumber type="number" maxFractionDigits="2"
														minFractionDigits="2" value="${a.taxa_agendamento}" />
												</p>
												
												<h3 class="tex-end">Forma de pagamento:</h3>
												<p class="text-start"><c:out value="${a.descricao_forma_pagamento}" /></p>
												
													<c:choose>
														<c:when test="${fn:length(a.pagamento)==16}">
															<h3 class="tex-end">Número do cartão: </h3>
															<p class="text-start"><c:out value="${a.pagamento}" /></p>
														</c:when>

														<c:when test="${fn:length(a.pagamento)==32}">
															<h3 class="tex-end">Id transação: </h3>
															<p class="text-start"><c:out value="${a.pagamento}" /></p>
														</c:when>

														<c:otherwise>
															<h3 class="tex-end">Código de barras: </h3>
															<p class="text-start"><c:out value="${a.pagamento}" /></p>
														</c:otherwise>
													</c:choose>
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
	</div>

	<script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
	<script src="./dashboard.js"></script>


	<!-- jQuery Mask -->
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

	<script type="text/javascript" src="jquery.mask.js"></script>


	<script type="text/javascript">
		$(document).ready(function() {
			//$(".exampleInputTelefone1").mask("TELEFONE: (00) 00000-0000");
			$(".exampleInputTelefone").mask("TELEFONE: (00) 0000-00009");
			$('.exampleInputChassi').mask('A.AA.AAAAAAA.A.AAAAA');

			$('.exampleInputCpf').mask('000.000.000-00', {
				reverse : true
			});
			$('.exampleInputCnpj').mask('00.000.000/0000-00', {
				reverse : true
			});
		});
	</script>


</body>
</html>