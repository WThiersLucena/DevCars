<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CADASTRO DE VEÍCULOS</title>

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


</head>
<body>

	<header
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">DEVCARS</a>
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<input class="form-control form-control-dark w-100" type="text"
			placeholder="Search" aria-label="Search">
		<div class="navbar-nav">
			<div class="nav-item text-nowrap">
				<a class="nav-link px-3" href="#">Sign out</a>
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

						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#"> <span data-feather="home"></span>
								HOME
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
				</div>
			</nav>
			<!--  END SIDEBAR -->

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">ADICIONAR VEÍCULOS</h1>

				</div>

				<div class="container col-12 col-md-6 col-lg-6 col-xl-6 shadow p-3">
					<h3 class="card-title text-center mb-3">CADASTRAR VEÍCULO</h3>

					<form action="ServletVeiculo" method="post">
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
											<option value="{marca.cod_marca}">${marca.marca_veiculo}</option>

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
										type="text" class="form-control" name="preço_veiculo" required />
								</div>

								<div class=mb-3>
									<label class="form-label">COR DO VEÍCULO:</label> <select
										class="form-select form-select-lg mb-3 fs-6" name="cod_cor"
										required>
										<option selected>SELECIONE A COR</option>
										<c:forEach var="cor" items="${listCor}">
											<option value="{cor.cod_cor}">${cor.nome_cor}</option>

										</c:forEach>
									</select>
								</div>

								<div class=mb-3>
									<label class="form-label">MOTOR DO VEÍCULO:</label> <select
										class="form-select form-select-lg mb-3 fs-6" name="cod_motor"
										required>
										<option selected>SELECIONE O TIPO DE MOTOR E POTÊNCIA</option>
										<c:forEach var="motor" items="${listMotor}">
											<option value="{motor.cod_motor}">${motor.motor_veiculo}
												${motor.potencia_cv}</option>
											<!--  <option value="1">4.0L V8 BI TURBO 650 CV</option>
 								<option value="2">6.5L V12 750 CV</option>
  								<option value="3">6.2L V12 580 CV</option>
  								<option value="4">4.5L V8 570 CV</option>
  								<option value="5">3.9L V8 BI TURBO 620 CV</option>
  								<option value="6">6.5L V12 810 CV</option>
  								<option value="7">8.0L QUADRI-TURBO 1600 CV</option>
  								<option value="8">3.8L V12 BI-TURBO 580 CV</option>
  								<option value="9">4.0L 6 CILINDROS BOXER TURBO 450 CV</option>
  								<option value="10">4.0L V8 BI TURBO + ELETRICO 680 CV</option>
  								<option value="11">3.0L 6 CILINDROS BOXER BI TURBO 450 CV</option>
  								<option value="12">2.9L V6 BI TURBO + ELÉTRICO 560 CV</option>
  								<option value="13">2 MOTORES ELÉTRICOS 468 CV</option>
  								<option value="14">5.2L V10 610 CV</option>
  								<option value="15">3.0L V6 TFSI 340 CV</option>
  								<option value="16">4.0L V8 BI TURBO FSI 600 CV</option>
  								<option value="17">2.0L TURBO FSI 230 CV</option>
  								<option value="18">2.0L TURBO 184 CV</option>
  								<option value="19">6 CILINDROS EM LINHA, 3.0L TWIN TURBO 411 CV</option>
  								<option value="20">6 CILINDROS EM LINHA, 3.0L TWIN TURBO 460 CV</option>
  								<option value="21">4.4L V8 TWIN TURBO 625 CV</option>
  								<option value="22">4.4L V8 TWIN TURBO 530 CV</option>
  								<option value="23">2.0L TURBO 194 CV</option>
  								<option value="24">6 CILINDROS EM LINHA, 3.0L TWIN TURBO + ELÉTRICO 394 CV</option>
  								<option value="25">5.2L V12 TURBO 608 CV</option>
  								<option value="26">6.0L V12 BI TURBO 659 CV</option>-->
										</c:forEach>
									</select>
								</div>

								<div class=mb-3>
									<label class="form-label">TIPO COMBUSTIVEL:</label> <select
										class="form-select form-select-lg mb-3 fs-6"
										name="cod_combustivel" required>
										<option selected>SELECIONE O TIPO DE COMBUSTIVEL</option>
										<c:forEach var="combustivel" items="${listCombustivel}">
											<option value="{combustivel.cod_combustivel}">${combustivel.tipo_combustivel}</option>
											<!--   <option value="1">GASOLINA</option>
 								<option value="2">FLEX</option>
  								<option value="3">ELETRICO</option>
  								<option value="4">HIBRIDO</option>-->
										</c:forEach>
									</select>
								</div>

								<div class=mb-3>
									<div class=mb-3>
										<label class="form-label">TIPO CAMBIO:</label> <select
											class="form-select form-select-lg mb-3 fs-6"
											name="cod_cambio" required>
											<c:forEach var="cambio" items="${listCambio}">
												<option value="{cambio.cod_cambio}">${cambio.cambio}</option>
												<!--  <option selected>SELECIONE O TIPO DE CÂMBIO</option>
  								<option value="1">AUTOMATICO 6 MARCHAS</option>
 								<option value="2">AUTOMATICO 7 MARCHAS</option>
  								<option value="3">AUTOMATICO 8 MARCHAS</option>
  								<option value="4">AUTOMATICO 9 MARCHAS</option>
								<option value="5">PDK</option>
								<option value="6">AUTOMATICO DE 1 VELOCIDADE</option>
								<option value="7">MANUAL 6 MARCHAS</option> -->
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
													<option value="{fornecedor.cod_fornecedor}">${fornecedor.razao_social}</option>
													<!-- <option value="1">FERRARI CORPORATION</option>
 								<option value="2">PORSCHE S/A</option>
  								<option value="3">BUGATTI CORPORATION</option>
  								<option value="4">LAMBOGHINI S/A</option>
								<option value="5">TESLA S/A</option>
								<option value="6">BMW ASSOCIAÇÃO</option>
								<option value="7">AUDI CORPORATION</option>
								<option value="8">ASTON MARTIN S/A</option>
								<option value="9">BENTLEY S/A</option>
								<option value="10">MERCEDES CORPORATION</option> -->
												</c:forEach>
											</select>
										</div>

										<div class=mb-3>
											<div class=mb-3>
												<label class="form-label">ESTOQUE:</label> <select
													class="form-select form-select-lg mb-3 fs-6" name="estoque"
													required>
													<option selected>O VEÍCULO SE ENCONTRA EM ESTOQUE?</option>
													<option value="0">NÃO</option>
													<option value="1">SIM</option>
												</select>
											</div>

											<div class=mb-3>
												<div class=mb-3>
													<label class="form-label">DESTAQUE:</label> <select
														class="form-select form-select-lg mb-3 fs-6"
														name="destaque" required>
														<option selected>O VEÍCULO SERÁ DESTAQUE NA HOME?</option>
														<option value="0">NÃO</option>
														<option value="1">SIM</option>
													</select>
												</div>



												<div class="d-grid gap-2 d-md-flex justify-content-md-end">
													<button type="submit" name="optionVeiculo"
														class="btn btn-primary flex-start" value="insertVeiculo">Salvar</button>
												</div>
							</c:when>

							<c:otherwise>

								<div class="mb-3">
									<input type="hidden" name="cod_fornecedor"
										value="${veiculo.cod_veiculo}" />
								</div>

								<div class=mb-3>
									<label class="form-label">MODELO:</label> <input type="text"
										class="form-control" name="modelo_veiculo"
										value="${veiculo.modelo_veiculo}" />
								</div>

								<div class="mb-3">
									<label class="form-label">MARCA:</label> <input type="text"
										class="form-control" name="cod_marca"
										value="${veiculo.cod_marca}" />
								</div>

								<div class="mb-3">
									<label class="form-label">CHASSI:</label> <input type="text"
										class="form-control" name="numero_chassi"
										value="${veiculo.numero_chassi}" />
								</div>

								<div class="mb-3">
									<label class="form-label">ANO DE FABRICAÇÃO:</label> <input
										type="text" class="form-control" name="ano_veiculo"
										value="${veiculo.ano_veiculo}" />
								</div>

								<div class="mb-3">
									<label class="form-label">PREÇO:</label> <input type="text"
										class="form-control" name="preco_veiculo"
										value="${veiculo.preco_veiculo}" />
								</div>

								<div class="mb-3">
									<label class="form-label">COR:</label> <input type="text"
										class="form-control" name="cod_cor" value="${veiculo.cod_cor}" />
								</div>

								<div class="mb-3">
									<label class="form-label">MOTOR DO VEÍCULO:</label> <input
										type="text" class="form-control" name="cod_motor"
										value="${veiculo.cod_motor}" />
								</div>

								<div class="mb-3">
									<label class="form-label">TIPO DE COMBUSTÍVEL:</label> <input
										type="text" class="form-control" name="cod_combustivel"
										value="${veiculo.cod_combustivel}" />
								</div>

								<div class="mb-3">
									<label class="form-label">TIPO DE CÂMBIO:</label> <input
										type="text" class="form-control" name="cod_cambio"
										value="${veiculo.cod_cambio}" />
								</div>

								<div class="mb-3">
									<label class="form-label">FORNECEDOR:</label> <input
										type="text" class="form-control" name="cod_fornecedor"
										value="${veiculo.cod_fornecedor}" />
								</div>

								<div class="mb-3">
									<label class="form-label">EM ESTOQUE:</label> <input
										type="text" class="form-control" name="estoque"
										value="${veiculo.estoque}" />
								</div>

								<div class="mb-3">
									<label class="form-label">EM DESTAQUE:</label> <input
										type="text" class="form-control" name="destaque"
										value="${veiculo.destaque}" />
								</div>

								<div class="d-grid gap-2 d-md-flex justify-content-md-end">
									<button type="submit" name="optionVeiculo"
										class="btn btn-primary flex-start" value="updateVeiculo">Atualizar</button>
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
						transform: function(d) { 
					        return d.toUpperCase(); 
					      }
					}
				},
			});
		});
	</script>


</body>
</html>