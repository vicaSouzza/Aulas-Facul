package teste2a;

import javax.swing.JOptionPane;

public class Aluno {

	public String ra;
	public String nome;
	public double notaNP1;
	public double notaNP2;
	
	
	public void relatorio(Aluno a1) {
		double media=0.0;
		
		media = (this.notaNP1+this.notaNP2)/2;
		
		if(media>=7){
			System.out.println("RA:" + a1.ra + " o aluno passou!");
		}
		else{
			System.out.println("RA:" + a1.ra + " o aluno não passou!");
		}
		
		return;
	}
	
}
