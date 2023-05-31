public class Filhos extends Pais{
  private String corOlhos;

  public Filhos(String nome, int idade, int anoNascimento, String apelido, String genero, String doenca, String corCabelo, String corOlhos){
    super(nome, idade, anoNascimento, apelido, genero, doenca, corCabelo);
    this.corOlhos = corOlhos;
  }

  public String getCorOlhos() {
	 return corOlhos;
  }

  public void setCorOlhos(String corOlhos) {
	 this.corOlhos = corOlhos;
  }
}