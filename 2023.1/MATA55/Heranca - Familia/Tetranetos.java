public class Tetranetos extends Trinetos{
  private int telefone;

  public Tetranetos(String nome, int idade, int anoNascimento, String apelido, String genero, String doenca, String corCabelo, String corOlhos, String profissao, float peso, float altura, int telefone){
    super(nome, idade, anoNascimento, apelido, genero, doenca, corCabelo, corOlhos, profissao, peso, altura);
    this.telefone = telefone;
  }

  public int getTelefone() {
	 return telefone;
  }

  public void setTelefone(int telefone) {
	 this.telefone = telefone;
  }
}