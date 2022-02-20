<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Veículos</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

<link href="./dashboard.css" rel="stylesheet"/>

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
		

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">LISTA DE VEÍCULOS</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group me-2">
            <form action="ServletVeiculo" method="post">
                    <button class="btn btn-primary mb-3" type="submit" name="optionVeiculo" value="insertFormVeiculo">Adicionar Veículo</button>
                </form>
          </div>
        </div>
      </div>


		<table class="table table-striped table-sm table-bordered" >
			<thead>
				<tr>
					<th class="col-1">Cod</th>
					
					<th class="col-1">Marca</th>
					<th class="col-1">Modelo</th>
					<th class="col-1">Cor</th>
					<th class="col-1">Ano</th>
					<th class="col-1">Motor</th>
					<th class="col-1">Potência</th>
					<th class="col-1">Preço</th>
					<th class="col-1">Combustível</th>
					<!-- <th class="col-2">Câmbio</th> -->
					<!-- <th class="col-2">Chassi</th>  -->
					<th class="col-1">Estoque</th>
					<th class="col-2">Ações</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="veiculo" items="${listVeiculo}">
					<tr>
						<form action="ServletVeiculo" method="post">
						
							<td>
								<c:out value="${veiculo.cod_veiculo}"/>
								<input type="hidden" name="cod_veiculo" value="${veiculo.cod_veiculo}"/>
							</td>
							
							<td>
								<c:out value="${veiculo.modelo_veiculo}"/>
							</td>
							
							<td>
								<c:out value="${veiculo.marca_veiculo}"/>
							</td>
							
							<td>
								<c:out value="${veiculo.nome_cor}"/>
							</td>
							
							<td>
								<c:out value="${veiculo.ano_veiculo}"/>
							</td>
							
							<td>
								<c:out value="${veiculo.motor_veiculo}"/>
							</td>
							
							<td>
								<c:out value="${veiculo.potencia_cv}"/>
							</td>
							
							<td>
								<c:out value="${veiculo.preco_veiculo}"/>
							</td>
							
							<td>
								<c:out value="${veiculo.tipo_combustivel}"/>
							</td>
							
							<!-- <td>
								<c:out value="${veiculo.cambio}"/>
							</td>  -->
							
							<!-- <td>
								<c:out value="${veiculo.numero_chassi}"/>
							</td> -->
							
							
							<td>
							
							<c:choose>
								    <c:when test="${veiculo.estoque == true}">
								        <p>DISPONÍVEL</p>
								    </c:when>    
								    <c:otherwise>
								        <p>INDISPONÍVEL</p>
								    </c:otherwise>
								</c:choose>
							</td>
							
							
							<td>
								<div class="d-grid gap-2 d-md-flex justify-content-md-center">
									
									
									<!-- INICIO do Botão que chama o MODAL -->
						
									<button class="btn btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#modal-delete-${veiculo.cod_veiculo}" id="${veiculo.cod_veiculo}">Deletar</button>
									
									<!-- FIM do Botão que chama o MODAL -->
									
									<!-- INÍCIO DO MODAL DE DELETAR -->
									<div class="modal fade" id="modal-delete-${veiculo.cod_veiculo}" tabindex="-1" aria-labelledby="inicioModal" aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered">
											<div class="modal-content bg-dark bg-gradient">
												<div class="text-center px-3 py-3">
													<h6 class="fs-6 text-white pb-3">TEM CERTEZA QUE DESEJA DELETAR O CÓDIGO <c:out value="${veiculo.cod_veiculo}"/>?</h6>
													<p class=" text-warning">ESSA AÇÃO NÃO PODERÁ SER DESFEITA!</p>
												</div>
												<div class="d-grid gap-2 d-md-flex justify-content-md-center px-3 py-3">
													<button class="btn btn-outline-primary px-3" type="submit" name="optionVeiculo" value="qualquerCoisa">Cancelar</button>
  													<button class="btn btn-outline-primary" type="submit" name="optionVeiculo" value="deleteVeiculo">Deletar</button>
												</div>
											</div>
										</div>
					
									</div>
									<!-- FIM DO MODAL DE DELETAR -->
									
									
									<button class="btn btn-primary" type="submit" name="optionVeiculo" value="updateFormVeiculo">Atualizar</button>
								</div>
							</td>
						</form>
					</tr>
				</c:forEach>
			</tbody>
		</table>

      </div>
    </main>
  </div>


 <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
 
 <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
 <script src="./dashboard.js"></script>
 
 
 <!-- jQuery Mask -->
 <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>

    <script type="text/javascript" src="jquery.mask.js"></script>


    <script type="text/javascript">
      
        $('.exampleInputChassi').mask('Z',{translation:  {'Z': {pattern: /[a-zA-Z0-9 ]/, recursive: true}}});
    </script>

</body>
</html>