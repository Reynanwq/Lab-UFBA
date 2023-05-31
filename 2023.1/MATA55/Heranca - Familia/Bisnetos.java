public class Bisnetos extends Netos{
  private float peso;

  public Bisnetos(String nome, int idade, int anoNascimento, String apelido, String genero, String doenca, String corCabelo, String corOlhos, String profissao, float peso){
    super(nome, idade, anoNascimento, apelido, genero, doenca, corCabelo, corOlhos, profissao);
    this.peso = peso;
  }

public float getPeso() {
	return peso;
}

public void setPeso(float peso) {
	this.peso = peso;
} 
}