public class Avos extends Bisavos{
  private String doenca;

  public Avos(String nome, int idade, int anoNascimento, String apelido, String genero, String doenca){
    super(nome, idade, anoNascimento, apelido, genero);
    this.doenca = doenca;
  }

  public String getDoenca() {
	 return doenca;
  }

  public void setDoenca(String doenca) {
	 this.doenca = doenca;
  }  
}