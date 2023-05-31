public class Bisavos extends Trisavos{
  private String genero;

  public Bisavos(String nome, int idade, int anoNascimento, String apelido, String genero){
    super(nome, idade, anoNascimento, apelido);
    this.genero = genero;
  }

  public void setGenero(String genero){
    this.genero = genero;
  }

  public String getGenero(){
    return genero;
  }
}