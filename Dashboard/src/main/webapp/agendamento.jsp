<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FORNECEDORES</title>
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

<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">DEVCARS</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
  <div class="navbar-nav">
    <div class="nav-item text-nowrap">
      <a class="nav-link px-3" href="#">Sign out</a>
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

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Agendamentos</h1>
      </div>

      <div>
        <!-- <table class="table table-striped table-sm">  -->

		<table class="table table-striped table-sm table-bordered" >
			<thead>
				<tr class="row">
					<th class="col-1 text-center">Código</th>
					<th class="col">Veiculo</th>
					<th class="col">Cliente</th>
					<th class="col-1 text-center">Data</th>
					<th class="col-2 text-center">Taxa de Agendamento</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var="a" items="${agenda}">
					<tr class="row">
						<td class="col-1 text-center"><c:out value="${a.cod_agendamento}" /> 
						<input type="hidden" name="id"
							value="${a.cod_agendamento}" /></td>
							
						<td class="col"><p>DETALHES DO VEÍCULO: 
						<p><c:out value="${a.marca_veiculo}" />
						<c:out value="${a.nome_cor}" />
						<c:out value="${a.ano_veiculo}" />
						<c:out value="${a.motor_veiculo}" />
						<c:out value="${a.potencia_cv}" />
						<c:out value="${a.tipo_combustivel}" /></p>
						<p><c:out value="${a.cambio}" /></p>
						<p>NUMERO CHASSI: <c:out value="${a.numero_chassi}" /></p></td>
						
						<td class="col">
						<p>NOME: 
							<c:out value="${a.nome_cliente}" />
							<c:out value="${a.razao_social}" />
						</p>
						<p>CPF/CNPJ: <c:out value="${a.numero_documento}" /></p>
						
						<p>EMAIL: <c:out value="${a.email_cliente}" /></p>
						
						<p>TELEFONE: <c:out value="${a.telefone_cliente}" /></p></td>
						
						<td class="col-1 text-center"><fmt:formatDate value="${a.data_reserva}" pattern="dd/MM/yyyy"/></td>					
						<td class="col-2 text-center">R$ <fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2" value="${a.taxa_agendamento}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

      </div>
    </main>
  </div>
</div>

 <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" ></script>
 <script src="./dashboard.js"></script>
 
</body>
</html>