public class Episodio{
  private String titulo;
  private int numero;
  private int duracao;
  private int temporadas;

  public Episodio(String titulo, int numero, int duracao, int temporadas){
    this.titulo = titulo;
    this.numero = numero;
    this.duracao = duracao;
    this.temporadas = temporadas;
  }

  public void setTitulo(String titulo){
    this.titulo = titulo;
  }

  public String getTitulo(){
    return titulo;
  }

public int getNumero() {
	return numero;
}

public void setNumero(int numero) {
	this.numero = numero;
}

public int getDuracao() {
	return duracao;
}

public void setDuracao(int duracao) {
	this.duracao = duracao;
}

public int getTemporadas() {
	return temporadas;
}

public void setTemporadas(int temporadas) {
	this.temporadas = temporadas;
}
  
}
