<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CADASTRO DE VEÍCULOS</title>

<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Link for Toast Message -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" />


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

.font-size-09 {
		font-size: 0.98em !important;
}

#exampleInputChassi {
	text-transform: uppercase;
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

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 bg-dark">
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2 text-light">ADICIONAR VEÍCULOS</h1>

				</div>

				<div
					class="container col-12 col-md-10 col-lg-6 col-xl-6 shadow p-3 bg-light rounded-3 mb-4">
					<h3 class="card-title text-center mb-3">CADASTRAR VEÍCULO</h3>

					<form action="ServletVeiculo" method="post" id="veiculoToast">
						<c:choose>
							<c:when test="${ veiculo == null }">

								<div class=mb-3>
									<label class="form-label">MODELO VEÍCULO:</label> <input
										type="text" class="form-control" name="modelo_veiculo"
										required />
								</div>

								<div class=mb-3>
									<label class="form-label">MARCA DO VEÍCULO:</label> <select
										class="form-select form-select-lg mb-3 fs-6" name="cod_marca"
										required>
										<option selected>SELECIONE A MARCA</option>
										<c:forEach var="marca" items="${listMarca}">
											
										</c:forEach>
									</select>
								</div>

								<div class=mb-3>
									<label class="form-label">CHASSI:</label> <input type="text"
										class="form-control" name="numero_chassi"
										id="exampleInputChassi" required />
								</div>

								<div class=mb-3>
									<label class="form-label">ANO DO VEÍCULO:</label> <input
										type="number" class="form-control" name="ano_veiculo" required />
								</div>

								<div class=mb-3>
									<label class="form-label">PREÇO DO VEÍCULO (R$):</label> <input
										type="text" id="exampleInputMoney" class="form-control"
										name="preco_veiculo" required />
								</div>

								<div class=mb-3>
									<label class="form-label">COR DO VEÍCULO:</label> <select
										class="form-select form-select-lg mb-3 fs-6" name="cod_cor"
										required>
										<!-- <option selected>SELECIONE A COR</option>  -->
										<c:forEach var="cor" items="${listCor}">
											<option value="${cor.cod_cor}">${cor.nome_cor}</option>
										</c:forEach>
									</select>
								</div>

								<div class=mb-3>
									<label class="form-label">MOTOR DO VEÍCULO:</label> <select
										class="form-select form-select-lg mb-3 fs-6" name="cod_motor"
										required>
										<option selected>SELECIONE O TIPO DE MOTOR E POTÊNCIA</option>
										<c:forEach var="motor" items="${listMotor}">
											<option value="${motor.cod_motor}">${motor.motor_veiculo}
												${motor.potencia_cv}</option>
										</c:forEach>
									</select>
								</div>

								<div class=mb-3>
									<label class="form-label">TIPO DE COMBUSTÍVEL:</label> <select
										class="form-select form-select-lg mb-3 fs-6"
										name="cod_combustivel" required>
										<option selected>SELECIONE O TIPODE COMBUSTÍVEL</option>
										<c:forEach var="combustivel" items="${listCombustivel}">
											<option value="${combustivel.cod_combustivel}">${combustivel.tipo_combustivel}</option>
										</c:forEach>
									</select>
								</div>


								<div class=mb-3>
									<label class="form-label">TIPO CAMBIO:</label> <select
										class="form-select form-select-lg mb-3 fs-6" name="cod_cambio"
										required>
										<c:forEach var="cambio" items="${listCambio}">
											<option value="${cambio.cod_cambio}">${cambio.cambio}</option>
										</c:forEach>
									</select>
								</div>


								<div class=mb-3>
									<label class="form-label">FORNECEDOR:</label> <select
										class="form-select form-select-lg mb-3 fs-6"
										name="cod_fornecedor" required>
										<!-- <option selected>SELECIONE O FORNECEDOR</option>  -->
										<c:forEach var="fornecedor" items="${listFornecedor}">
											<option value="${fornecedor.cod_fornecedor}">${fornecedor.razao_social}</option>
										</c:forEach>
									</select>
								</div>


								<div class=mb-3>
									<label class="form-label">ESTOQUE:</label> <select
										class="form-select form-select-lg mb-3 fs-6" name="estoque"
										required>
										<option selected>O VEÍCULO SE ENCONTRA EM ESTOQUE?</option>
										<option value="FALSE">NÃO</option>
										<option value="TRUE">SIM</option>
									</select>
								</div>


								<div class=mb-3>
									<label class="form-label">DESTAQUE:</label> <select
										class="form-select form-select-lg mb-3 fs-6" name="destaque"
										required>
										<option selected>O VEÍCULO SERÁ DESTAQUE NA HOME?</option>
										<option value="FALSE">NÃO</option>
										<option value="TRUE">SIM</option>
									</select>
								</div>
								
								<div class=mb-3>
									<label class="form-label">LINK DA IMAGEM:</label> <input type="text"
										class="form-control" name="imagem" required />
								</div>
								
								<div class=mb-3>
									<label class="form-label">DESCRIÇÃO DO VEÍCULO:</label> <textarea
										class="form-control" name="descricao" rows="4" cols="33" required /></textarea>
								</div>

								<div class="d-grid gap-2 d-md-flex justify-content-md-end">
									<button type="submit" name="optionVeiculo"
										class="btn btn-warning flex-start" value="insertVeiculo">Salvar</button>
								</div>
							</c:when>

							<c:otherwise>

								<div class="mb-3">
									<input type="hidden" name="cod_veiculo"
										value="${veiculo.cod_veiculo}" />
								</div>

								<div class=mb-3>
									<label class="form-label">MODELO:</label> <input type="text"
										class="form-control" name="modelo_veiculo"
										value="${veiculo.modelo_veiculo}" />
								</div>

								<div class="mb-3">
									<label class="form-label">MARCA:</label> <select
										class="form-select form-select-lg mb-3 fs-6" name="cod_marca"
										required>
										<!--<option selected>SELECIONE A MARCA</option>  -->
										<c:forEach var="marca" items="${listMarca}">
											<option value="${marca.cod_marca}">${marca.marca_veiculo}</option>
										</c:forEach>

									</select>
								</div>

								<div class="mb-3">
									<label class="form-label">CHASSI:</label> <input type="text"
										class="form-control" name="numero_chassi"
										value="${veiculo.numero_chassi}" />
								</div>

								<div class="mb-3">
									<label class="form-label">ANO DE FABRICAÇÃO:</label> <input
										value="${veiculo.ano_veiculo}" type="text"
										class="form-control" name="ano_veiculo" />
								</div>

								<div class="mb-3">
									<label class="form-label">PREÇO:</label> <input type="text"
										class="form-control" name="preco_veiculo"
										id="exampleInputMoney" value="${veiculo.preco_veiculo}" />
								</div>

								<div class="mb-3">
									<label class="form-label">COR:</label> <select
										class="form-select form-select-lg mb-3 fs-6" name="cod_cor"
										required>
										<!--  <option selected>SELECIONE A COR</option> -->
										<c:forEach var="cor" items="${listCor}">
											<option value="${cor.cod_cor}">${cor.nome_cor}</option>
										</c:forEach>
									</select>
								</div>

								<div class="mb-3">
									<label class="form-label">SELECIONE O TIPO DE MOTOR E
										POTÊNCIA:</label> <select class="form-select form-select-lg mb-3 fs-6"
										name="cod_motor" required>
										<c:forEach var="motor" items="${listMotor}">
											<option value="${motor.cod_motor}">${motor.motor_veiculo}
												${motor.potencia_cv}</option>
										</c:forEach>
									</select>
								</div>
								<div class=mb-3>
									<label class="form-label">TIPO DE COMBUSTÍVEL:</label> <select
										class="form-select form-select-lg mb-3 fs-6"
										name="cod_combustivel" required>
										<option selected>SELECIONE O TIPO DE COMBUSTÍVEL</option>
										<c:forEach var="combustivel" items="${listCombustivel}">
											<option value="${combustivel.cod_combustivel}">${combustivel.tipo_combustivel}</option>
										</c:forEach>
									</select>
								</div>

								<div class=mb-3>
									<div class=mb-3>
										<label class="form-label">TIPO CAMBIO:</label> <select
											class="form-select form-select-lg mb-3 fs-6"
											name="cod_cambio" required>
											<c:forEach var="cambio" items="${listCambio}">
												<option value="${cambio.cod_cambio}">${cambio.cambio}</option>
											</c:forEach>
										</select>
									</div>

									<div class=mb-3>
										<div class=mb-3>
											<label class="form-label">FORNECEDOR:</label> <select
												class="form-select form-select-lg mb-3 fs-6"
												name="cod_fornecedor" required>
												<option selected>SELECIONE O FORNECEDOR</option>
												<c:forEach var="fornecedor" items="${listFornecedor}">
													<option value="${fornecedor.cod_fornecedor}">${fornecedor.razao_social}</option>
												</c:forEach>
											</select>
										</div>
										<div class=mb-3>
											<div class=mb-3>
												<label class="form-label">ESTOQUE:</label> <select
													class="form-select form-select-lg mb-3 fs-6" name="estoque"
													required>
													<option>O VEÍCULO SE ENCONTRA EM ESTOQUE?</option>
													<option value="FALSE">NÃO</option>
													<option value="TRUE">SIM</option>
												</select>
											</div>

											<div class=mb-3>
												<div class=mb-3>
													<label class="form-label">DESTAQUE:</label> <select
														class="form-select form-select-lg mb-3 fs-6"
														name="destaque" required>
														<option>O VEÍCULO SERÁ DESTAQUE NA HOME?</option>
														<option value="FALSE">NÃO</option>
														<option value="TRUE">SIM</option>
													</select>
												</div>
												
												
												
												<div class=mb-3>
													<label class="form-label">LINK DA IMAGEM:</label> <input type="text"
													class="form-control" name="imagem" required />
												</div>
								
								
	
												<div class=mb-3>
													<label class="form-label">DESCRIÇÃO DO VEÍCULO:</label> <textarea
													class="form-control" name="descricao" rows="4" cols="33"  required /></textarea>
												</div>
												
												
												

												<div class="d-grid gap-2 d-md-flex justify-content-md-end">
													<button type="submit" name="optionVeiculo"
														class="btn btn-warning flex-start" value="updateVeiculo">Atualizar</button>
												</div>
							</c:otherwise>

						</c:choose>
					</form>
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

	<!-- Begin: jQuery for Toast Message -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
	<!-- End: jQuery for Toast Message -->

	<!-- jQuery Mask -->
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"
		integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
		crossorigin="anonymous"></script>

	<script type="text/javascript" src="jquery.mask.js"></script>


	<script type="text/javascript">
		$(document).ready(function() {
			$('#exampleInputChassi').mask('A.AA.AAAAAAAA.A.AAAAA', {
				translation : {
					'Z' : {
						pattern : /[A-Z0-9]/,
						optional : true,
						transform : function(d) {
							return d.toUpperCase();
						}
					}
				},
			});
			$('#exampleInputMoney').mask("R$#.###.###,00", {
				reverse : true
			});
		});

		//jQuery for Toast Message on bellow:
		document.getElementById('veiculoToast').addEventListener('submit', function() {
					toastr.success('Veículo salvo com sucesso!');
		});
	</script>


</body>
</html>