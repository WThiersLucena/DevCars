<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cliente</title>


<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">


<!--  teste de padronização  -->

<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }
      
      
      .accordion-button{
      	-webkit-box-shadow: 11px 11px 28px 10px rgba(191,161,63,0.45); 
		box-shadow: 5px 5px 28px 10px rgba(191,161,63,0.45);
      }
      
       
      .accordion-button:not(.collapsed){
      	color: #000;
      	background-color: #fff;
      	border-color: #fff
      }
      
      .accordion-button:focus{
      	border-color: #F0CA4F;
      	box-shadow: none
      }
      
      .ac-header:not(.collapsed){
      	color: #fff;
      	background-color: #F0CA4F;
      	
      }
      
      .ac-header{
      	color: #fff;
      	background-color: #F0CA4F;
      }
      
      
      .fw-bolder{
      	text-shadow: 3px 2px 3px rgba(150, 150, 150, 0.68);
      }
      
      
      h3{
      	 font-family: Arial, Helvetica, Verdana, sans-serif;
      	 margin-bottom: 8px;
      	 font-size: 18px;
      	 font-weight: bold
      }
      
      p{
      	margin-bottom: 4px
      }
      
      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    
<link href="./dashboard.css" rel="stylesheet"/>

</head>




<!--  teste de padronização  -->

<!--  versao antiga   -->
 <!-- <style>
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

@media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
}

    </style>

<link href="./dashboard.css" rel="stylesheet"/>

</head>

 -->
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
    
    
    <!--  END SIDEBAR -->



    <!--      TESTE COM DETALHES DE  
 <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
				<h1>Clientes	</h1>
				</div>
				ENDEREÇO -->
				<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 bg-dark">
				<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2 text-light">Clientes	</h1>
				</div>
				
	<div>
					<c:forEach var="cliente" items="${listCliente}">
						<input type="hidden" name="id" value="${cliente.cod_cliente}" />

						<!-- inicio acordeon -->
						<div class="accordion accordion-flush border rounded m-3 shadow rounded-3 ac-style" id="accordionFlushExample">
							<div class="accordion-item">
								<h2 class="accordion-header "
									id="flush-heading-${cliente.cod_cliente}">
									<button class="accordion-button collapsed ac-header" type="button"
										data-bs-toggle="collapse"
										data-bs-target="#flush-collapse-${cliente.cod_cliente}"
										aria-expanded="false"
										aria-controls="flush-collapse-${cliente.cod_cliente}">

										<div class="row col-12 col-md-12 col-lg-12">
											<div class="col-2 text-start fw-bolder">
												<p>Cod : <c:out value="${cliente.cod_cliente}" /></p>
											</div>

											<div class="col-5 text-center fw-bolder">
												<p>   <c:out value=" ${cliente.nome_cliente}  ${cliente.razao_social}  " />  </p>
											</div>

											<div class="col-5 text-center fw-bolder">
												<p> <c:out value="${cliente.email_cliente}"/>
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
											<div class="col-md">
												<div class="cliente">
													<h3 class="">Cliente</h3>
													<p class="">NOME: <c:out value="${cliente.nome_cliente}" /><c:out value="${cliente.razao_social}" /></p>
													<!-- <p class="">CPF/CNPJ: <c:out value="${cliente.numero_documento}" /></p> -->
													<p class="">EMAIL: <c:out value="${cliente.email_cliente}" /></p>
													<p class="">TELEFONE: <c:out value="${cliente.telefone_cliente} " /></p>
													</div>
											</div>

											<div class="col-md">
											<h3 class="">Endereço</h3>
												<p class="">UF: <c:out value="${cliente.uf}" /></p>
												<p class="">Cidade: <c:out value="${cliente.cidade}" /></p>
												<p class="">Bairro: <c:out value="${cliente.bairro}" /></p>
												<p class="">Cep: <c:out value="${cliente.cep_endeco}" /></p></p>
												<p class="">Logradouro: <c:out value="${cliente.rua_endereco}" /> <c:out value="${cliente.numero_endereco}" /> <c:out value="${cliente.complemento}" /></p>
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
 <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" ></script>
 <script src="./dashboard.js"></script>



</body>
</html>