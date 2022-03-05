package teste2a;

public class TesteAluno {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Aluno a1 = new Aluno();
		a1.ra = "12345";
		a1.nome = "Bia";
		a1.notaNP1 = 10.0;
		a1.notaNP2 = 10.0;
		
		a1.relatorio(a1);
	}

}
