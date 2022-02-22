<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CADASTRAR FORNECEDOR</title>

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
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="index.jsp">DevCars</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <input class="form-control form-control-dark w-100" type="text" placeholder="Pesquisar" aria-label="Search">
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
          <li class="nav-item"><a class="nav-link" href="index.jsp">
				<form action="ServletIndex" method="post">
					<button type="submit" class="btn">
						<span data-feather="home"></span> HOME
					</button>
				</form>
		</a></li>
          
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

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 bg-dark">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2 text-light">CADASTRAR DE FORNECEDORES</h1>
        
      </div>

	 <div class="container col-12 col-md-6 col-lg-6 col-xl-6 shadow p-3 bg-light rounded-3">
		<h3 class="card-title text-center mb-3">ADICIONAR FORNECEDOR</h3>
	
		<form action="ServletFornecedor" method="post">
				<c:choose>
					<c:when test="${ supplier == null }">
					
						<div class=mb-3>
							<label class="form-label">CNPJ:</label>
							<input type="text" class="form-control" id="exampleInputCnpj" name="cnpj" required/>
						</div>
					
						<div class=mb-3>
							<label class="form-label">RAZÃO SOCIAL:</label>
							<input type="text" class="form-control" name="razao_social" required/>
						</div>
						
						<div class=mb-3>
							<label class="form-label">INSCRIÇÃO ESTADUAL:</label>
							<input type="text" class="form-control" id="exampleInputInscEstadual" name="inscricao_estadual" required/>
						</div>
						
						<div class=mb-3>
							<label class="form-label">EMAIL:</label>
							<input type="text" class="form-control" name="email_fornecedor" required/>
						</div>
						
						<div class=mb-3>
							<label class="form-label">TELEFONE:</label>
							<input type="text" class="form-control" id="exampleInputTelefone" name="telefone_fornecedor" required/>
						</div>
						
						
						<div class="d-grid gap-2 d-md-flex justify-content-md-end">
							<button type="submit" name="optionFornecedor" class="btn btn-warning flex-start" value="insertSupplier">Salvar</button>
						</div>
						
					</c:when>
				
					<c:otherwise>
					
						<div class="mb-3">
							<input type="hidden" name="cod_fornecedor" value="${supplier.cod_fornecedor}"/>
						</div>
						
						<div class=mb-3>
							<label class="form-label">CNPJ:</label>
							<input type="text" class="form-control" id="exampleInputCnpj" name="cnpj" value="${supplier.cnpj}"/>
						</div>
						
						<div class="mb-3">
							<label class="form-label">RAZÃO SOCIAL:</label>
							<input type="text" class="form-control" name="razao_social" value="${supplier.razao_social}"/>
						</div>
						
						<div class="mb-3">
							<label class="form-label">INSCRIÇÃO ESTADUAL:</label>
							<input type="text" class="form-control" id="exampleInputInscEstadual" name="inscricao_estadual" value="${supplier.inscricao_estadual}"/>
						</div>
						
						<div class="mb-3">
							<label class="form-label">EMAIL:</label>
							<input type="text" class="form-control" name="email_fornecedor" value="${supplier.email_fornecedor}"/>
						</div>
						
						<div class="mb-3">
							<label class="form-label">TELEFONE:</label>
							<input type="text" class="form-control" name="telefone_fornecedor" id="exampleInputTelefone" value="${supplier.telefone_fornecedor}"/>
						</div>
						
						<div class="d-grid gap-2 d-md-flex justify-content-md-end">
							<button type="submit" name="optionFornecedor" class="btn btn-warning flex-start" value="updateSupplier">Atualizar</button>
						</div>
						
					</c:otherwise>
				
				</c:choose>
		</form>
	</div>
      
    </main>
  </div>
</div>

 <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
 
 <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
 <script src="./dashboard.js"></script>
 
 <!-- jQuery Mask -->
 <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>

    <script type="text/javascript" src="jquery.mask.js"></script>


    <script type="text/javascript">
        $(document).ready(function () {
            $('#exampleInputTelefone').mask('(00) 00000-0000');
            $('#exampleInputInscEstadual').mask('000.000.000.000');
            $('#exampleInputCnpj').mask('00.000.000/0000-00', { reverse: true });
            $('.placeholder').mask("00/00/0000", { placeholder: "__/__/____" });
        });
    </script>

</body>
</html>