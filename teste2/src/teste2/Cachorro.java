package teste2;

public class Cachorro {
	
	public String nome;
	public int idade;
	public double peso;
	
	public Cachorro(String nome, int idade, double peso) {
		this.nome = nome;
		this.idade = 0;
		this.peso = 0;
	}
	
	void latir(){
		
		if(this.idade<3){
			System.out.println("Au au meu nome é " + nome + " eu tenho " + peso + " quilos\n");
		}
		else{
			if(this.idade==3 && this.idade<=8) {}
		}
	
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
	}
	
	
}
