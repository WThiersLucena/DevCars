import br.com.dao.LoginDAO;
import br.com.entidade.Login;

public class App {

	public static void main(String[] args) {
	
		LoginDAO l = new LoginDAO();
		Login user = l.conferencia("larissa.bandeira@devcars.com", "larissa");
		System.out.println(user.getUsuario());

	}

}
