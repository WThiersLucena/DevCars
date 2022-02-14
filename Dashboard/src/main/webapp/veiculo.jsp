<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Veiculos</title>
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
   <nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light  sidebar collapse ">
				<div class="position-sticky pt-3">
					<ul class="nav flex-column">
						<li class="nav-item mb-1"><a class="nav-link active"
							aria-current="page" href="index.jsp"> <span data-feather="home"></span>
								 Home
						</a></li>
						<li class="nav-item mt-1 mb-1"><a class="nav-link" href="veiculo.jsp">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-truck" viewBox="0 0 16 16">
  										<path d="M0 3.5A1.5 1.5 0 0 1 1.5 2h9A1.5 1.5 0 0 1 12 3.5V5h1.02a1.5 1.5 0 0 1 1.17.563l1.481 1.85a1.5 1.5 0 0 1 .329.938V10.5a1.5 1.5 0 0 1-1.5 1.5H14a2 2 0 1 1-4 0H5a2 2 0 1 1-3.998-.085A1.5 1.5 0 0 1 0 10.5v-7zm1.294 7.456A1.999 1.999 0 0 1 4.732 11h5.536a2.01 2.01 0 0 1 .732-.732V3.5a.5.5 0 0 0-.5-.5h-9a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .294.456zM12 10a2 2 0 0 1 1.732 1h.768a.5.5 0 0 0 .5-.5V8.35a.5.5 0 0 0-.11-.312l-1.48-1.85A.5.5 0 0 0 13.02 6H12v4zm-9 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm9 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
								</svg>  Veículos
						</a></li>
						<li class="nav-item mt-1 mb-1"><a class="nav-link" href="pedido.jsp">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart-check-fill" viewBox="0 0 16 16">
 										 <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm-1.646-7.646-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L8 8.293l2.646-2.647a.5.5 0 0 1 .708.708z"/>
								</svg>  Pedidos
						</a></li>
						<li class="nav-item mt-1 mb-1"><a class="nav-link" href="cliente.jsp">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
  										<path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
  										<path fill-rule="evenodd" d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"/>
 										<path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
								</svg>  Clientes
						</a></li>
						<li class="nav-item mt-1 mb-1"><a class="nav-link" href="fornecedor.jsp">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box" viewBox="0 0 16 16">
  										<path d="M8.186 1.113a.5.5 0 0 0-.372 0L1.846 3.5 8 5.961 14.154 3.5 8.186 1.113zM15 4.239l-6.5 2.6v7.922l6.5-2.6V4.24zM7.5 14.762V6.838L1 4.239v7.923l6.5 2.6zM7.443.184a1.5 1.5 0 0 1 1.114 0l7.129 2.852A.5.5 0 0 1 16 3.5v8.662a1 1 0 0 1-.629.928l-7.185 2.874a.5.5 0 0 1-.372 0L.63 13.09a1 1 0 0 1-.63-.928V3.5a.5.5 0 0 1 .314-.464L7.443.184z"/>
								</svg>  Fornecedores
						</a></li>
						<li class="nav-item mt-1 mb-1"><a class="nav-link" href="agendamento.jsp">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-event" viewBox="0 0 16 16">
  									<path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z"/>
  									<path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
								</svg>  Agendamentos
						</a></li>
					</ul>
				</div>
			</nav>
    <!--  END SIDEBAR -->

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Veículos</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group me-2">
            <form action="ServletVeiculo" method="post">
                <button class="btn btn-primary mb-3" type="submit">ver veiculos</button>
            </form>
          </div>
        </div>
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