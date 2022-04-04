<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Veículos</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

<!-- Link for Toast Message -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" />


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
      
      .font-size-09 {
		font-size: 0.98em !important;
	  }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

<link href="./dashboard.css" rel="stylesheet"/>
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
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2 text-light">LISTA DE VEÍCULOS</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group me-2">
            <form action="ServletVeiculo" method="post">
            
            		<!-- INÍCIO DE BOTÃO DE ADICIONAR VEÍCULO -->
                    <button class="btn btn-warning mb-3 pb-2" type="submit" name="optionVeiculo" value="insertFormVeiculo">
                    
                    <!-- INÍCIO ÍCONE DE ADICIONAR VEÍCULO -->
                    	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
  							<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  							<path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
						</svg><span class="text-dark fw-bold"> Adicionar veículo</span>
                    <!-- FIM ÍCONE DE ADICIONAR VEÍCULO -->
                    </button>
                    <!--  FIM BOTÃO DE ADICIONAR VEÍCULO -->
                    
                </form>
          </div>
        </div>
      </div>

<!-- Função que exibe a contagem da lista de veiculos 
	<div>
		<c:set var="veiculos" value="${listVeiculo}"/> 
		<h1 class="fs-1 text-light"> <c:out value="${fn:length(veiculos)}"></c:out></h1>
	</div>
	
<!-- Função que exibe a contagem da lista de veiculos -->

	<div class="table-responsive">
		<table class="table table-striped table-sm table-bordered shadow bg-light">
			<thead>
				<tr>
					<th class="col-1 text-center">COD</th>
					<th class="col-1 text-center">MARCA</th>
					<th class="col-1 text-center">MODELO</th>
					<th class="col-1 text-center">COR</th>
					<th class="col-1 text-center">ANO</th>
					<th class="col-2 text-center">MOTOR</th>
					<th class="col-1 text-center">POTÊNCIA</th>
					<th class="col-2 text-center">PREÇO</th>
					<th class="col-1 text-center">COMBUSTÍVEL</th>
					<!-- <th class="col-2 text-center">Câmbio</th> -->
					<!-- <th class="col-2 text-center">Chassi</th>  -->
					<th class="col-1 text-center">ESTOQUE</th>
					<th class="col-1 text-center">AÇÕES</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="veiculo" items="${listVeiculo}">
					<tr class="veiculos">
						<form action="ServletVeiculo" method="post">
						
							<td class="text-center">
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
							
							<!--  <td class="exampleInputMoney">
								<c:out value="R$ ${veiculo.preco_veiculo}"/>
							</td> -->
							
							
							<td class="text-start">R$ <fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${veiculo.preco_veiculo}" /></td>
							
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
						
									<button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#modal-delete-${veiculo.cod_veiculo}" id="${veiculo.cod_veiculo}">
									
													<!-- INÍCIO DA IMAGEM DE DELETAR -->
													<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
  														<path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
 														<path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
													</svg>
													<!-- FIM DA IMAGEM DE ATUALIZAR -->
									</button>
									
									<!-- FIM do Botão que chama o MODAL -->
									
									<!-- INÍCIO DO MODAL DE DELETAR -->
									<div class="modal fade" id="modal-delete-${veiculo.cod_veiculo}" tabindex="-1" aria-labelledby="inicioModal" aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered">
											<div class="modal-content bg-dark bg-gradient">
												<div class="text-center px-3 py-3">
													<h6 class="fs-6 text-white pb-3">TEM CERTEZA QUE DESEJA DELETAR O CÓDIGO <c:out value="${veiculo.cod_veiculo}"/>?</h6>
													<p class=" text-danger fw-bold">ESSA AÇÃO NÃO PODERÁ SER DESFEITA!</p>
												</div>
												<div class="d-grid gap-2 d-md-flex justify-content-md-center px-3 py-3">
													<button class="btn btn-outline-light px-3" type="submit" name="optionVeiculo" value="qualquerCoisa">Cancelar</button>
  													<button class="btn btn-outline-danger veiculos" type="submit" name="optionVeiculo" value="deleteVeiculo">Deletar</button>
												</div>
											</div>
										</div>
					
									</div>
									<!-- FIM DO MODAL DE DELETAR -->
									
									
									<button class="btn btn-warning" type="submit" name="optionVeiculo" value="updateFormVeiculo">
									
									<!-- INÍCIO DA IMAGEM DE ATUALIZAR -->
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  										<path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
 										<path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
									</svg>
									<!-- FIM DA IMAGEM DE ATUALIZAR -->
									
									</button>
								</div>
							</td>
						</form>
					</tr>
				</c:forEach>
			</tbody>
		</table>

      </div>
  </div>
  </main>

 <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
 
 	<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
 	<script src="./dashboard.js"></script>
 
 
 	<!-- Begin: jQuery for Toast Message -->
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
 	<!-- End: jQuery for Toast Message -->
 
 	<!-- jQuery Mask -->
 	<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>

 	<script type="text/javascript" src="jquery.mask.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
        	$('.exampleInputMoney').mask("R$#.000.000.000,00");
        });
        
        
        //jQuery for Toast Message on bellow:
	    let listVeiculo = document.querySelectorAll('.veiculos')
	   	let elements = Array.from(listVeiculo)
	    console.log(elements)
	    
	     for (var i = 0; i < elements.length; i++) {
		    elements[i].addEventListener('submit', function(){
		        toastr.success('Veículo excluído com sucesso!');
		    })
	     }
        
        //jQuery for Toast Message on bellow:
//        document.getElementById('veiculos').addEventListener('submit', function(){
//            toastr.success('Veiculo excluído com sucesso!');
        
        
    </script>
 
 
 <!-- jQuery Mask
 <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>

    <script type="text/javascript" src="jquery.mask.js"></script>


    <script type="text/javascript">
      
        $('.exampleInputChassi').mask('Z',{translation:  {'Z': {pattern: /[a-zA-Z0-9 ]/, recursive: true}}});
    </script> -->

</body>
</html>