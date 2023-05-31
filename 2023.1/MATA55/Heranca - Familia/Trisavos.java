public class Trisavos extends Tetravos{
  private String apelido;

  public Trisavos(String nome, int idade, int anoNascimento, String apelido){
    super(nome, idade, anoNascimento);
    this.apelido = apelido;
  }

  public String getApelido() {
	 return apelido;
  }

  public void setApelido(String apelido) {
	 this.apelido = apelido;
  }  
}