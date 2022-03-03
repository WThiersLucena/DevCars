import br.com.conexao.Conexao;
import br.com.dao.ClienteDAO;
import br.com.dao.EnderecoDAO;
import br.com.dao.PedidoClienteDAO;
import br.com.dao.VeiculoDAO;
import br.com.dao.AgendamentoDAO;

public class Teste {
	public static void main(String[] args) {

// ---------> MOSTRAR AGENDAMENTOS <------------
//		AgendamentoDAO agenda = new AgendamentoDAO();
//		System.out.println(agenda.mostrarAgenda());
// ---------> FIM DOS AGENDAMENTOS <------------		
		
		
		
// ---------> MOSTRAR CLIENTE <------------

//		
		ClienteDAO clienteD = new ClienteDAO();
		EnderecoDAO endereco = new EnderecoDAO();
		PedidoClienteDAO pedidoCliente = new PedidoClienteDAO();

		Conexao c = new Conexao();
		c.getConnection();		
//		System.out.println(clienteD.mostrarCliente());		
//		System.out.println(clienteD.mostrarPedido());
//		System.out.println(endereco.mostrarEndereco());
		System.out.println(pedidoCliente.mostrarPedido());
		
		
		
		

//	 ---------> FIM MOSTRAR CLIENTE <------------
		

		
//		VeiculoDAO veiculoD = new VeiculoDAO();
// 		Conexao c = new Conexao();
//		c.getConnection();
		
//		Veiculo veiculo = new Veiculo("RS6", 6, "6A29852345B1A56", 2022, 500000.00, 1, 7, 1, 1, 7, true, false);
//		Veiculo veiculo2 = new Veiculo("Abobrinha", 2, "G754259T97S345", 2021, 1000000.00, 2, 5, 2, 1, 3, true, true);
		
		
//		veiculoD.adicionarVeiculo(veiculo);
//		veiculoD.adicionarVeiculo(veiculo2);
		
//		veiculo2.setModelo_veiculo("ABC");
//		veiculoD.atualizarVeiculo(veiculo2);
		


//		System.out.println(veiculoD.mostrarVeiculo());
		
		
		// INICIO ADICIONAR FORNECEDOR
			//Obs: para testar outro mÃ©todo, comente os cÃ³digos de cada opÃ§Ã£o, i.e., as trÃªs prÃ³ximas linhas
		
//		FornecedorDAO fornec_dao = new FornecedorDAO();
//		Fornecedor fornecedor11 = new Fornecedor("94654670234001", "Volvo Car Corporation", "381346058999", "contac@volvo.com", "08007077590");
//		fornec_dao.addSupplier(fornecedor11);
		
		// FIM ADICIONAR FORNECEDOR
		
		
		
		// INICIO MOSTRAR TODOS FORNECEDOR
			//Obs: para testar outro mÃ©todo, comente os cÃ³digos de cada opÃ§Ã£o, i.e., as duas prÃ³ximas linhas.
		
//		FornecedorDAO fornec_dao = new FornecedorDAO();
//		fornec_dao.getListSupplier();
		
		// FIM MOSTRAR FORNECEDOR
		
		
		
		// INICIO SELECIONAR E MOSTRAR FORNECEDOR PELO ID
			//Obs: para testar outro mÃ©todo, comente os cÃ³digos de cada opÃ§Ã£o, i.e., as duas prÃ³ximas linhas.
//		FornecedorDAO fornec_dao = new FornecedorDAO();
//		System.out.println(fornec_dao.buscarSupplier(11)); //Dessa forma, mostrarÃ¡ apenas o fornecedor de cod_fornecedor = 11.
		
		// INICIO SELECIONAR E MOSTRAR FORNECEDOR PELO ID
		
		
		
		// INICIO ATUALIZAR DADOS DO FORNECEDOR
			//Obs: para testar outro mÃ©todo, comente os cÃ³digos de cada opÃ§Ã£o, i.e., as cinco prÃ³ximas linhas de lÃ³gica de programaÃ§Ã£o.
				//Lembrando que fornedor11 foi o nome do objeto que criou o fornecedor de cÃ³digo 11. Como Ã© ele que quero atualizar dado, trabalharei com o mesmo.
				//Por isso, deve-se DESCOMENTAR a linha que criou o fornecedor11, i.e, a linha cuja programaÃ§Ã£o Ã© = Fornecedor fornecedor11 = new Fornecedor("94654670234001", "Volvo Car Corporation", "381346058999", "contac@volvo.com", "08007077590");
				//ou simplesmente criar esse mesmo cÃ³digo apÃ³s instanciar o FornecedorDAO.
		
//		FornecedorDAO fornec_dao = new FornecedorDAO();
//		fornecedor11.setCod_fornecedor(11); // Primeiro busca o fornecedor de cÃ³digo 11 pelo objeto que foi criado o fornecedor 11, i.e., pelo fornecedor11.
//		fornecedor11.setEmail_fornecedor("volvosupp@volvo.com"); //Em seguida, chama o mesmo fornecedor11 e seta um novo valor ao mÃ©todo setter que vocÃª deseja modificar.
//		fornec_dao.updateSupplier(fornecedor11); //chama o objeto do FornecedorDAO, obtem o mÃ©todo que deseja se trabalhar, i.e., o updateSupplier que atualiza os dados do fornecedor.
		
//		System.out.println(fornec_dao.buscarSupplier(11)); //e por fim printa na tela atravÃ©s do objeto do FornecedorDAO, e busca o fornecedor pelo mÃ©todo que chama pelo ID do fornecedor.
		
		// FIM DE ATUALIZAR DADOS DO FORNECEDOR
		
		
		
		
		// INICIO DELETAR FORNECEDOR
			//Obs: para testar outro mÃ©todo, comente os cÃ³digos de cada opÃ§Ã£o, i.e., as duas prÃ³ximas linhas de lÃ³gica de programaÃ§Ã£o.
			
//		FornecedorDAO fornec_dao = new FornecedorDAO();
//		fornec_dao.removeSupplier(11); //Dessa forma remove o Fornecedor cujo cod_fornecedor = 11. 
//
//		fornec_dao.getListSupplier(); // Imprime toda a lista de fornecedores que sobraram.
		
		// INICIO DELETAR FORNECEDOR

		
		
		
		
		
		

		// INICIO MOSTRAR CLIENTE [ COMENTAR TUDO ANTES DE TESTAR ]
		
//	 ---------> MOSTRAR CLIENTE <------------

		
//				ClienteDAO clienteD = new ClienteDAO();
//
//				VeiculoDAO veiculoD = new VeiculoDAO();
//
//				Conexao c = new Conexao();
//				c.getConnection();		
//				System.out.println(clienteD.mostrarCliente());
//
//				VeiculoDAO veiculoD = new VeiculoDAO();
//
//				Conexao c = new Conexao();
//				c.getConnection();		
//				System.out.println(clienteD.mostrarCliente());				
				
		

		
	//TESTE PARA MOSTRAR VEICULO
		
//		VeiculoDAO veiculo = new VeiculoDAO();
//		System.out.println(veiculo.mostrarVeiculo());
	//FIM DO TESTE
		
	//TESTE PARA ADICIONAR VEICULO E BUSCAR PELO ID
		
//		VeiculoDAO veiculo = new VeiculoDAO();
 //   	Veiculo veiculo27 = new Veiculo(1, "URUS", 1, 2020, 1, 100000.00, 1, 1, 1, "12345678903336521", true, false);
//		veiculo.adicionarVeiculo(veiculo27);
//		System.out.println(veiculo.buscarVeiculo(30));
		
//		System.out.println(veiculo.mostrarVeiculo());
	//FIM DO TESTE
		
		
		
	//TESTE PARA MOSTRAR TODOS OS VEICULOS
//		VeiculoDAO veiculo = new VeiculoDAO();
//		System.out.println(veiculo.mostrarVeiculo());
	//FIM DO TESTE	
		
		
		
	
	//TESTE PARA REMOVER O VEICULO PELO ID
//		VeiculoDAO veiculo = new VeiculoDAO();
//		veiculo.removerVeiculo(36);
//		System.out.println(veiculo.mostrarVeiculo());
	//FIM DO TESTE
		
		
		
		
	//TESTE PARA ALTERAR O VEÃ�CULO
//		VeiculoDAO veiculo = new VeiculoDAO();
//		Veiculo veiculo27 = new Veiculo(1, "URUS", 1, 2020, 1, 100000.00, 1, 1, 1, "12345678903336521", true, false);
//		veiculo27.setCod_cor(2);
//		veiculo27.setCod_veiculo(27);
//		veiculo.atualizarVeiculo(veiculo27);
//		System.out.println(veiculo.buscarVeiculo(27));
	// FIM DO TESTE
		
  	
    	
    // TESTE PARA LISTAR TODAS AS CORES 
//    	CorDAO cor = new CorDAO();
//    	System.out.println(cor.mostrarCor());
    // FIM TESTE
    	
    	
    // TESTE PARA LISTA TODOS OS COMBUSTIVEL
//    	CombustivelDAO combustivel = new CombustivelDAO();
//    	System.out.println(combustivel.mostrarCombustivel());
    // FIM TESTE
    	
    
    // TESTE PARA LISTAR TODOS AS MARCAS
//    	MarcaDAO marca = new MarcaDAO();
//    	System.out.println(marca.mostrarMarca());
    // FIM TESTE
    
    	
     // TESTE PARA LISTAR TODOS AS MARCAS
//    	CambioDAO cambio = new CambioDAO();
//    	System.out.println(cambio.mostrarCambio());
    // FIM TESTE

		
		
  // TESTE PARA LISTAR TODOS OS MOTORES
//		MotorDAO m = new MotorDAO();
//		System.out.println(m.mostrarMotor());
//		

	}
	

		
//		VeiculoDAO v = new VeiculoDAO();
//		System.out.println(v.buscarVeiculo(22));
		
}

