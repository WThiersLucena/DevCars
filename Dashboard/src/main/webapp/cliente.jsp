<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- TAG RESPONSAVEL PELA MAGICA DO CPF E CNPJ -->


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cliente</title>


<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">


<!--  teste de padronização  -->

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

.container-style{
	border-left: 2px solid #d9d9d9;
	border-radius: 4px;
	margin-bottom: 15px;
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


@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

<link href="./dashboard.css" rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1">
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



						</a>
					 </li>
					</ul>


				</div>
			</nav>


			<!--  END SIDEBAR -->
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 bg-dark">
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2 text-light">LISTA DE CLIENTES</h1>
				</div>

				<div>
					<c:forEach var="cliente" items="${listCliente}">
						<input type="hidden" name="id" value="${cliente.cod_cliente}" />

						<!-- inicio acordeon -->
						<div
							class="accordion accordion-flush border rounded m-3 shadow rounded-3 ac-style"
							id="accordionFlushExample">
							<div class="accordion-item">
								<h2 class="accordion-header "
									id="flush-heading-${cliente.cod_cliente}">
									<button class="accordion-button collapsed ac-header"
										type="button" data-bs-toggle="collapse"
										data-bs-target="#flush-collapse-${cliente.cod_cliente}"
										aria-expanded="false"
										aria-controls="flush-collapse-${cliente.cod_cliente}">

										<div class="row col-12 col-md-12 col-lg-12">
											<div class="d-none d-sm-block col-md-4 text-start fw-bolder">
												<p>
													#
													<c:out value="${cliente.cod_cliente}" />
												</p>
											</div>

											<div class="col text-start fw-bolder">
												<p>
													<c:out value=" ${cliente.nome_cliente}  ${cliente.razao_social}  " />
												</p>
											</div>
										</div>

									</button>
								</h2>
								<div id="flush-collapse-${cliente.cod_cliente}"
									class="accordion-collapse collapse"
									aria-labelledby="flush-heading-${cliente.cod_cliente}"
									data-bs-parent="#accordionFlushExample">
									<div class="accordion-body">
										<div class="row">
											<div class="col-md container-style">
												<div class="cliente">
													<h3 class="">Cliente</h3>
													<p class="">
														NOME :
														<c:out value="${cliente.nome_cliente}" />
														<c:out value="${cliente.razao_social}" />
													</p>



													<c:set var="doc" value="${cliente.numero_documento}" />
													<c:choose>
														<c:when test="${fn:length(doc)==11}">

															<span>CPF: </span>
															<span class="exampleInputCpf"><c:out
																	value="${cliente.numero_documento}" /></span>
														</c:when>

														<c:otherwise>
															<span>CNPJ: </span>
															<span class="exampleInputCnpj"><c:out
																	value="${cliente.numero_documento}" /></span>
														</c:otherwise>
													</c:choose>

													<p class="">
														EMAIL :
														<c:out value="${cliente.email_cliente}" />
													</p>
													<p class="exampleInputTelefone">
														<c:out value="${cliente.telefone_cliente}" />
													</p>
												</div>
												</div>
												
												<br>
												<!-- ENDEREÇOS EM COLUM TRAZER TODOS OS ENDEREÇOS 
												
												<h3 class=""></h3>
												<h3 class="">Endereços Cadastrados :</h3>
												<c:forEach var="end" items="${mostrarEndereco}">
															<input type="hidden" name="id" value="${end.cod_cliente}" />
													<br>
													
													<br>
													
													<p class="">
														Cep :<strong>
														<c:out value="${end.cep_endereco}" />	
														</strong>													
													</p>
													
													<p class="">
														Estado :
														<strong>
														<c:out value="${end.uf}" />	
														</strong>													
													</p>
													
													
													<p class="">
														Rua :<strong>
														<c:out value="${end.rua_endereco}    " />															
														 nº 
														<c:out value="  : ${end.numero_endereco} "  />
														<c:out value="${end.complemento}" />
														</strong>														
													</p>
													
													
													<p class="">
														Bairro :   
														<strong>
															<c:out value="${end.bairro}" />
														</strong>											
													</p>
													
													<p class="">
														Cidade : 
														<strong>
															<c:out value="${end.cidade}" />	
														</strong>													
													</p>
													
													</c:forEach>
												 -->
											<!-- ENDEREÇOS EM COLUM TRAZER TODOS OS ENDEREÇOS  -->													
												
											

											<div class="col-md">
												
												<div class="row">
													<div class="col-md">
														<div class="pedidos">
														
														
														
														
														<!-- TRAZENDO OS PEDIDOS DO CLIENTE  
											
															<h3>Historico de Pedidos</h3>-->	
															<!-- inicio acordeon -->
					
															<!-- <c:forEach var="ped" items="${mostrarPedido}">
																<input type="hidden" name="id" value="${ped.cod_cliente}" />-->
											
																<!-- inicio acordeon -->
															<!--	<div
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
																							COD :
																							<c:out value="${ped.cod_pedido}" />
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
																							DATA DE EMISSÃO :
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
																								NOME :
																								<c:out value="${ped.nome_cliente}" />
											
																							</p>
																							
																								<c:set var="doc" value="${pedidos.numero_documento}"/>  
																								 
											
																							<p class="">
																								VALOR TOTAL :
																								<c:out value="${ped.valor_total_pedido}" />
																							</p>
											
											
																							<p class="">
																								FORMA PAGAMENTO:
																								<c:out value="${ped.descricao_forma_pagamento}" />
																							</p>
											
																							<p class="">
																								STATUS:
																								<c:out value="${ped.status}" />
																							</p>
											
																							<p class="">
																								VEICULO :
																								<c:out value="${ped.modelo_veiculo}" />
																							</p>
																							
																							<p class="">
																								CUSTO FRETE :
																								<c:out value="${ped.valor_frete}" />
																							</p>
																							
																							<p class="">
																								DATA ENVIO :
																								<c:out value="${ped.data_envio}" />
																							</p>
																							<p class="">
																								DESTINO :
																								<c:out value="${ped.unidade_federativa}" />
																							</p>
																							<p class="">
																								ITEM :
																								<c:out value="${ped.modelo_veiculo}" />
																							</p>
																							
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div> -->
																<!-- fim acordeon -->
															<!--	</c:forEach> -->
															  
																<!-- fim acordeon -->
											
														</div>
													</div>
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
				$(document).ready(
						function() {
							//$(".exampleInputTelefone1").mask("TELEFONE: (00) 00000-0000");
							$(".exampleInputTelefone").mask(
									"TELEFONE: (00) 0000-00009");
							$('.exampleInputChassi').mask(
									'A.AA.AAAAAAA.A.AAAAA');
							
							$('.exampleInputCep').mask('CEP : 00000-000');

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