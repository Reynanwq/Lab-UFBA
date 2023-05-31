public class Trinetos extends Bisnetos{
  private float altura;

  public Trinetos(String nome, int idade, int anoNascimento, String apelido, String genero, String doenca, String corCabelo, String corOlhos, String profissao, float peso, float altura){
    super(nome, idade, anoNascimento, apelido, genero, doenca, corCabelo, corOlhos, profissao, peso);
    this.altura = altura;
  }

  public float getAltura() {
	 return altura;
  }

  public void setAltura(float altura) {
	 this.altura = altura;
  }
}