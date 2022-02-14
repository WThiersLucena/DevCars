<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cliente</title>


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
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">Company name</a>
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
        <h1 class="h2">Lista Cliente</h1>
        <form action="ServletCliente" method="post">
						<button type="submit" class="btn btn-warning">ATUALIZAR</button>
						
		</form>
      </div>

      <h2></h2>
      <div class="table-responsive">
 <!--        <table class="table table-striped table-sm">  -->
         <table class="table table-bordered" >
         	
			<thead>
				<tr>
					<th class="col-2 ">Cod Cliente</th>
					<th class="col-1">Nº Documento</th>
					<th class="col-3">Nome Cliente</th>
					<th class="col-2">Data Nac</th>
					<th class="col-2">Email</th>
					<th class="col-2">Telefone</th>					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cliente" items="${listCliente}">
					<tr class="font-family: var;">
						
							<td>
								<c:out value="${cliente.cod_cliente}"/>
							</td>
							<td>
								<c:out value="${cliente.numero_documento}"/>
							</td>
							<td>
								<c:out value="${cliente.nome_cliente}"/>
								<c:out value="${cliente.razao_social}"/>
							</td>
						<td>
								<c:out value="${cliente.data_nascimento}"/>
							</td>
							<td>
								<c:out value="${cliente.email_cliente}"/>
							</td>
							<td>
								<c:out value="${cliente.telefone_cliente}"/>
							</td>
							<td>	
						</td>
												
					</tr>
				</c:forEach>
			</tbody>
		</table>
         
         
         
         
      </div>
    </main>
  </div>
</div>






 <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
 
 <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
 <script src="./dashboard.js"></script>
 
 
</body>
</html>