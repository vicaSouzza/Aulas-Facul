package teste1;

import javax.swing.JOptionPane;

public class Alunos {

	public String ra;
	public String nome;
	public double notaNP1;
	public double notaNP2;
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Alunos a1 = new Alunos();
		a1.ra = "12345";
		a1.nome = "Bia";
		a1.notaNP1 = 10.0;
		a1.notaNP2 = 10.0;
		
		a1.relatorio(a1);
	}
	public void relatorio(Alunos a1) {
		double media=0.0;
		
		media = (a1.notaNP1+a1.notaNP2)/2;
		
		if(media>=7){
			System.out.println("RA:" + a1.ra + " o aluno passou!");
		}
		else{
			System.out.println("RA:" + a1.ra + " o aluno não passou!");
		}
		
		return;
	}
	
}
