<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CADASTRO DE VEÍCULOS</title>

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
            <a class="nav-link active" aria-current="page" href="#">
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

        
      </div>
    </nav>
    <!--  END SIDEBAR -->

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">ADICIONAR VEÍCULOS</h1>
        
      </div>

	 <div class="container col-12 col-md-6 col-lg-6 col-xl-6 shadow p-3">
		<h3 class="card-title text-center mb-3">CADASTRAR VEÍCULO</h3>
	
		<form action="ServletVeiculo" method="post">
				<c:choose>
					<c:when test="${ veiculo == null }">
					
						<div class=mb-3>
							<label class="form-label">MODELO VEÍCULO:</label>
							<input type="text" class="form-control" name="modelo_veiculo" required/>
						</div>
					
						<div class=mb-3>
							<label class="form-label">MARCA DO VEÍCULO:</label>
							<select class="form-select form-select-lg mb-3 fs-6" name="marca_veiculo" required>
  								<option selected>SELECIONE A MARCA</option>
  								<option value="1">LAMBORGHINI</option>
 								<option value="2">FERRARI</option>
  								<option value="3">BUGATTI</option>
  								<option value="4">PORSCHE</option>
  								<option value="5">TESLA</option>
  								<option value="6">AUDI</option>
  								<option value="7">BMW</option>
  								<option value="8">ASTON MARTIN</option>
  								<option value="9">BENTLEY</option>
							</select>
						</div>
						
						<div class=mb-3>
							<label class="form-label">CHASSI:</label>
							<input type="text" class="form-control" name="numero_chassi" id="exampleInputChassi" required/>
						</div>
						
						<div class=mb-3>
							<label class="form-label">ANO DO VEÍCULO:</label>
							<input type="number" class="form-control" name="ano_veiculo" required/>
						</div>
						
						<div class=mb-3>
							<label class="form-label">PREÇO DO VEÍCULO (R$):</label>
							<input type="text" class="form-control" name="preço_veiculo" required/>
						</div>
						
						<div class=mb-3>
							<label class="form-label">COR DO VEÍCULO:</label>
							<select class="form-select form-select-lg mb-3 fs-6" name="cor_veiculo" required>
  								<option selected>SELECIONE A COR</option>
  								<option value="1">PRETO</option>
 								<option value="2">BRANCO</option>
  								<option value="3">AMARELO</option>
  								<option value="4">VERMELHO</option>
  								<option value="5">CINZA</option>
  								<option value="6">AZUL</option>
  								<option value="7">PRATA</option>
  								<option value="8">VERDE</option>
							</select>
						</div>
						
						<div class=mb-3>
							<label class="form-label">MOTOR DO VEÍCULO:</label>
							<select class="form-select form-select-lg mb-3 fs-6" name="cor_veiculo" required>
  								<option selected>SELECIONE O TIPO DE MOTOR E POTÊNCIA</option>
  								<option value="1">4.0L V8 BI TURBO 650 CV</option>
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
  								<option value="26">6.0L V12 BI TURBO 659 CV</option>
							</select>
						</div>
						
						<div class=mb-3>
							<label class="form-label">TIPO COMBUSTIVEL:</label>
							<select class="form-select form-select-lg mb-3 fs-6" name="tipo_combustivel" required>
  								<option selected>SELECIONE O TIPO DE COMBUSTIVEL</option>
  								<option value="1">GASOLINA</option>
 								<option value="2">FLEX</option>
  								<option value="3">ELETRICO</option>
  								<option value="4">HIBRIDO</option>
							</select>
						</div>
						
						<div class=mb-3>
							<div class=mb-3>
							<label class="form-label">TIPO CAMBIO:</label>
							<select class="form-select form-select-lg mb-3 fs-6" name="cod_cambio" required>
  								<option selected>SELECIONE O TIPO DE CÂMBIO</option>
  								<option value="1">AUTOMATICO 6 MARCHAS</option>
 								<option value="2">AUTOMATICO 7 MARCHAS</option>
  								<option value="3">AUTOMATICO 8 MARCHAS</option>
  								<option value="4">AUTOMATICO 9 MARCHAS</option>
								<option value="5">PDK</option>
								<option value="6">AUTOMATICO DE 1 VELOCIDADE</option>
								<option value="7">MANUAL 6 MARCHAS</option>
							</select>
						</div>
						
						
						
						<div class="d-grid gap-2 d-md-flex justify-content-md-end">
							<button type="submit" name="optionVeiculo" class="btn btn-primary flex-start" value="insertVeiculo">Salvar</button>
						</div>
						
					</c:when>
				
					<c:otherwise>
					
						<div class="mb-3">
							<input type="hidden" name="cod_fornecedor" value="${supplier.cod_fornecedor}"/>
						</div>
						
						<div class=mb-3>
							<label class="form-label">CNPJ:</label>
							<input type="text" class="form-control" name="cnpj" value="${supplier.cnpj}"/>
						</div>
						
						<div class="mb-3">
							<label class="form-label">RAZÃO SOCIAL:</label>
							<input type="text" class="form-control" name="razao_social" value="${supplier.razao_social}"/>
						</div>
						
						<div class="mb-3">
							<label class="form-label">INSCRIÇÃO ESTADUAL:</label>
							<input type="text" class="form-control" name="inscricao_estadual" value="${supplier.inscricao_estadual}"/>
						</div>
						
						<div class="mb-3">
							<label class="form-label">EMAIL:</label>
							<input type="text" class="form-control" name="email_fornecedor" value="${supplier.email_fornecedor}"/>
						</div>
						
						<div class="mb-3">
							<label class="form-label">TELEFONE:</label>
							<input type="text" class="form-control" name="telefone_fornecedor" value="${supplier.telefone_fornecedor}"/>
						</div>
						
						<div class="d-grid gap-2 d-md-flex justify-content-md-end">
							<button type="submit" name="optionVeiculo" class="btn btn-primary flex-start" value="updateVeiculo">Atualizar</button>
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
            $('#exampleInputChassi').mask('0.XX.XXXXXXXX.0.00000');
        });
    </script>
 
	
</body>
</html>