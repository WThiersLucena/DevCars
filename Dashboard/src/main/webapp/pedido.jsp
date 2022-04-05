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

html {
	background-color: #212529 !important;
}

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

.container-style {
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

.container-style span {
	color: #7a7a7a;
	text-shadow: 0 1px 1px 0 #959595;
}

.container-style p {
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
	.accordion-button {
		font-size: 13px;
	}
	h3 {
		font-size: 14px;
	}
	p, span {
		padding-left: 7px;
		font-size: 13px;
	}
	.font-size-09 {
		font-size: 1rem !important;
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

		<div class="navbar-nav col-12 col-md-1 col-lg-1">
			<div class="nav-item text-nowrap">
				<form action="ServletIndex" method="post">
					<button name="option" value="sair">
						Sair
						<button />
				</form>
				<c:out value="${email}" />
				<c:choose>

					<c:when test="${email != null}">
						<c:out value="${email}" />
					</c:when>
					<c:otherwise>
						<%
						session.invalidate();
						response.sendRedirect("login.jsp");
						%>
					</c:otherwise>
				</c:choose>
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

										<div class="row col-sm-12 col-md-12 col-lg-12">
											<div
												class="row col-sm-12 col-md-12 col-lg-1 text-start fw-bolder">
												<p>

													<c:out value="${pedidos.cod_pedido}" />
												</p>
											</div>

											<div
												class="row col-sm-12 col-md-12 col-lg-4 text-start fw-bolder">
												<p>
													VALOR TOTAL :
													<!--<c:out value="${pedidos.valor_total_pedido}" />-->
													<span class="text-start fw-bold"> R$ <fmt:formatNumber
															type="number" maxFractionDigits="2" minFractionDigits="2"
															value="${pedidos.valor_total_pedido}" />
													</span>
												</p>
											</div>



											<div
												class="row col-sm-12 col-md-12 col-lg-4 text-start fw-bolder">
												<p>
													DATA DE EMISSAO :
													<fmt:formatDate value="${pedidos.data_pedido}"
														pattern="dd/MM/yyyy" />

												</p>
											</div>


											<div
												class="row col-sm-12 col-md-12 col-lg-3 text-start fw-bolder">
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
											<div class="col-xs-12 col-md-12  col-lg-4 container-style">
												<div class="Cliente">
													<h3>Cliente</h3>
													<p class="">
														NOME CLIENTE:
														<c:out value="${pedidos.nome_cliente}" />


														<c:out value="${pedidos.razao_social}" />
													</p>


													<!--  	<p class="">
													NUMERO DOCUMENTO: 
													<c:out value="${pedidos.numero_documento}" />
												</p>-->

													<p class=""></p>



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




													<p input type="Text" class="Telefone">


														<!--<c:out value="${pedidos.telefone_cliente}" />-->
													<p class="exampleInputTelefone">

														<c:out value="${pedidos.telefone_cliente}" />
													</p>
													</p>


													<span class=""> EMAIL CLIENTE: <c:out
															value="${pedidos.email_cliente}" />
													</span>




												</div>

											</div>

											<div class="col-xs-12 col-md-12  col-lg-5 container-style">
												<h3 class="">Detalhes do Veiculo</h3>


												<p class="">
													VALOR FRETE:
													<!--<c:out value="${pedidos.valor_frete}" />-->
													<span class="text-start fw-bold"> R$ <fmt:formatNumber
															type="number" maxFractionDigits="2" minFractionDigits="2"
															value="${pedidos.valor_frete}" />
													</span>
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

												<p input type="Text" class="numerochassi">
													NUMERO CHASSI:
													<c:out value="${pedidos.numero_chassi}" />
												</p>

												<p class="">
													PRECO VEICULO:
													<!--<c:out value="${pedidos.preco_veiculo}" />-->
													<span class="text-start fw-bold"> R$ <fmt:formatNumber
															type="number" maxFractionDigits="2" minFractionDigits="2"
															value="${pedidos.preco_veiculo}" />
													</span>
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


											</div>

											<div class="col-xs-12 col-md-12  col-lg-3 container-style">
												<h3 class="tex-end">Detalhes Pagamento</h3>

												<p class="">
													VALOR TOTAL PEDIDO:
													<!--<c:out value="${pedidos.valor_total_pedido}" />-->
													<span class="text-start fw-bold"> R$ <fmt:formatNumber
															type="number" maxFractionDigits="2" minFractionDigits="2"
															value="${pedidos.valor_total_pedido}" />
													</span>
												</p>


												<p input type="Text" class="data">DATA PEDIDO:</p>

												<span><fmt:formatDate value="${pedidos.data_pedido}"
														pattern="dd/MM/yyyy" /> </span>


												<p class="">
													DESCRICAO FORMA PAGAMENTO:
													<c:out value="${pedidos.descricao_forma_pagamento}" />
												</p>


											</div>

											<div class="col-12 container-style">
												<h3 class="tex-end">Endereco Cliente</h3>


												<span> <span class=""> <c:out
															value="${pedidos.rua_endereco}" />
												</span> <span class=""> <c:out
															value="${pedidos.numero_endereco}" />
												</span> <span class=""> <c:out value="${pedidos.bairro}" />
												</span> <span class=""> <c:out value="${pedidos.cidade}" />
												</span> <span class=""> <c:out value="${pedidos.uf}" />
												</span> <span class="exampleInputCep"> <c:out
															value="${pedidos.cep_endereco}" />
												</span>


												</span>




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


	<!--  <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
	<script src="./dashboard.js"></script>-->


	<!-- jQuery Mask -->
	<!-- <script src="https://code.jquery.com/jquery-2.2.4.min.js"
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
			
			$('.Telefone').mask("(00) 0000.00009"{
				reverse : true
			});
			
			$('.cep').mask("00.000-000"{
				reverse : true
			});
			
			$('.numerochassi').mask("0000.0000.0000.00000."{
				reverse : true
			})
			
			$('.data').mask("00/00/0000."{
				reverse : true
			})
			
			
		});
	</script>




	<script src="./dashboard.js"></script> -->









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

			$('.exampleInputCep').mask('00000-000', {
				reverse : true
			});

		});
	</script>

</body>
</html>