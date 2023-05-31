public class Pais extends Avos{
  private String corCabelo;

  public Pais(String nome, int idade, int anoNascimento, String apelido, String genero, String doenca, String corCabelo){
    super(nome, idade, anoNascimento, apelido, genero, doenca);
    this.corCabelo = corCabelo;
  }

  public String getCorCabelo() {
	 return corCabelo;
  }

  public void setCorCabelo(String corCabelo) {
	 this.corCabelo = corCabelo;
  }
}