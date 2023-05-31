public class Tetravos extends Pessoa{
  private int anoNascimento;

  public Tetravos(String nome, int idade, int anoNascimento){
    super(nome, idade);
    this.anoNascimento = anoNascimento;
  }

  public int getAnoNascimento() {
	 return anoNascimento;
  }

  public void setAnoNascimento(int anoNascimento) {
	 this.anoNascimento = anoNascimento;
  }  
}