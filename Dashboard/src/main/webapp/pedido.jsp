<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pedido</title>
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

ul{
    list-style-type: none;
    list-style: none;
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

 
	<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">

      <div class="position-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.jsp">
              <span data-feather="home"></span>
              HOME
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="veiculo.jsp"> 
            	<form action="ServletVeiculo" method="post">
					<button type="submit" class="btn">
						<span data-feather="file"></span>
						VEÍCULO
					</button>
				</form>
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="cliente.jsp">
            	<form action="ServletCliente" method="post">
					<button type="submit" class="btn">
						<span data-feather="shopping-cart"></span>
             			 CLIENTE
					</button>
				</form>  
            </a>
          </li>
          
          <li class="nav-item" >
          	<a class="nav-link" href="fornecedor.jsp" >
            	<form action="ServletFornecedor" method="post">
					<button type="submit" class="btn">
						<span data-feather="users"></span>
						FORNECEDOR
					</button>
				</form>
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="pedido.jsp">
            	<form action="ServletPedido" method="post">
					<button type="submit" class="btn">
						<span data-feather="bar-chart-2"></span>
             				 PEDIDO
					</button>
				</form> 
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="agendamento.jsp">    
             	<form action="ServletAgendamento" method="post">
					<button type="submit" class="btn">
						 <span data-feather="layers"></span>
            				  AGENDAMENTO
					</button>
				</form> 
            </a>
          </li>
          
        </ul>
      </div>
    </nav>


      </div>

	<!--  END SIDEBAR -->
			


			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 bg-dark">
				<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
				<h1 class="h2 text-light">LISTA DE PEDIDOS</h1>
				</div>

				<div class="table-responsive">

			<!-- 	<form action="ServletPedido" name="optionPedido" method="post">
						<button type="submit" value="Kbeludo" class="btn btn-outline-dark">MOSTRAR PEDIDO</button>
					</form> -->

				
					<table class="table align-middle table table-striped table-sm table-light table-bordered shadow w-100">
							<thead>
							
								<tr>
									<th scope="col">COD</th> <!--Table tittle-->
									<!-- <th scope="col">nome_cliente</th> <!--Table tittle-->
									<!-- <th scope="col">razao_social</th> <!--Table tittle-->
									<!-- <th scope="col">numero_documento</th> <!--Table tittle-->
									<!-- <th scope="col">email_cliente</th> <!--Table tittle-->
									<!-- <th scope="col">telefone_cliente</th> <!--Table tittle-->
									<!-- <th scope="col">descricao_pagamento</th> <!--Table tittle-->
									<th scope="col">VALOR TOTAL</th>
									<!--Table tittle-->
									<th scope="col">DATA DE EMISSÃO</th>
									<!--Table tittle-->
									<th scope="col">STATUS</th>
									<!--Table tittle-->
									<th scope="col">DETALHES</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="a" items="${listPedido}">
									<tr>
										<form action="ServletPedido" method="post">

											<td>${a.cod_pedido}</td> <!--Atributtes Table-->
											<!-- 	<td>${a.nome_cliente}</td> <!--Atributtes Table-->
											<!-- 	<td>${a.razao_social}</td>	<!--Atributtes Table-->
											<!--  	<td>${a.numero_documento}</td> <!--Atributtes Table-->
											<!--  	<td>${a.email_cliente}</td> <!--Atributtes Table-->
											<!--  	<td>${a.telefone_cliente}</td> <!--Atributtes Table-->
											<!--  	<td>${a.descricao_forma_pagamento}</td> <!--Atributtes Table-->
											<!--  	<td>${a.valor_frete}</td> <!--Atributtes Table-->
											<td>${a.valor_total_pedido}</td> <!--Atributtes Table-->
											<td>${a.data_pedido}</td> <!--Atributtes Table-->
											<td>${a.status}</td> <!--Atributtes Table-->
											<td class="detalhes">
												<details>
													<summary> DETALHES DO PEDIDO </summary>
														<ul>
															<li>Nome Cliente: ${a.nome_cliente} </li>
															<li>Razão Social: ${a.razao_social} </li>
															<li>Nº Documento: ${a.numero_documento} </li>
															<li>Email: ${a.email_cliente}</li>
															<li>Telefone: ${a.telefone_cliente} </li>
															<li>Forma de Pagamento: ${a.descricao_forma_pagamento} </li>
															<li>Valor Frete: ${a.valor_frete} </li>
														</ul>
												</details>
											</td>
									</form>
								</tr>
							</c:forEach>
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

	<script src="./dashboard.js"></script>
</body>
</html>