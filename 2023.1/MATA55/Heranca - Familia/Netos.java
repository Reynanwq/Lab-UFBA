public class Netos extends Filhos{
  private String profissao;

  public Netos(String nome, int idade, int anoNascimento, String apelido, String genero, String doenca, String corCabelo, String corOlhos, String profissao){
    super(nome, idade, anoNascimento, apelido, genero, doenca, corCabelo, corOlhos);
    this.profissao = profissao;
  }

  public String getProfissao() {
	 return profissao;
  }

  public void setProfissao(String profissao) {
	 this.profissao = profissao;
  }
}