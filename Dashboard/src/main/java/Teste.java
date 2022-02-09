import br.com.conexao.Conexao;
import br.com.dao.VeiculoDAO;
import br.com.entidade.Veiculo;

public class Teste {
	public static void main(String[] args) {
		
		VeiculoDAO veiculoD = new VeiculoDAO();
		Conexao c = new Conexao();
		c.getConnection();
		
		Veiculo veiculo = new Veiculo("RS6", 6, "6A29852345B1A56", 2022, 500000.00, 1, 7, 1, 1, 7, true, false);
		Veiculo veiculo2 = new Veiculo("Abobrinha", 2, "G754259T97S345", 2021, 1000000.00, 2, 5, 2, 1, 3, true, true);
		
		
//		veiculoD.adicionarVeiculo(veiculo);
//		veiculoD.adicionarVeiculo(veiculo2);
		
		veiculo2.setModelo_veiculo("ABC");
		veiculoD.atualizarVeiculo(veiculo2);
		


		System.out.println(veiculoD.mostrarVeiculo());
		
		
	}
}
