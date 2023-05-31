class Main {
  public static void main(String[] args) {
    //TETRAVOS
    Tetravos tetravos = new Tetravos("Tiberius", 321, 1874);
    System.out.println("\n----- TETRAVO DA FAMILIA -----\n");
    System.out.println("Nome: " + tetravos.getNome());
    System.out.println("Idade: " + tetravos.getIdade());
    System.out.println("Ano de Nascimento: " + tetravos.getAnoNascimento());

    //TRISAVOS
    System.out.println("\n----- TRISAVOS DA FAMILIA -----\n");
    Trisavos trisavo = new Trisavos("Gaius", 310, 1878, "Gai");
    System.out.println("Nome: " +  trisavo.getNome());
    System.out.println("Idade: " + trisavo.getIdade());
    System.out.println("Ano de Nascimento: " + trisavo.getAnoNascimento());
    System.out.println("Apelido: " +  trisavo.getApelido());
    
    //BISAVOS
    System.out.println("\n----- BISAVOS DA FAMILIA -----\n");
    Bisavos bisavo = new Bisavos("Marcus", 300, 1890, "Nao tem", "Masculino");
    System.out.println("Nome: " +  bisavo.getNome());
    System.out.println("Idade: " + bisavo.getIdade());
    System.out.println("Ano de Nascimento: " + bisavo.getAnoNascimento());
    System.out.println("Apelido: " +  bisavo.getApelido());
    System.out.println("Genero: " +  bisavo.getGenero());
    
    //AVOS
    System.out.println("\n----- AVOS DA FAMILIA -----\n");
    Avos avo = new Avos("Robert", 284, 1900, "Robinho", "Masculino", "Tuberculose");
    System.out.println("Nome: " +  avo.getNome());
    System.out.println("Idade: " + avo.getIdade());
    System.out.println("Ano de Nascimento: " + avo.getAnoNascimento());
    System.out.println("Apelido: " +  avo.getApelido());
    System.out.println("Genero: " +  avo.getGenero());
    System.out.println("Doenca: " +  avo.getDoenca());
    
    //PAIS
    System.out.println("\n----- PAIS DA FAMILIA -----\n");
    Pais pai = new Pais("Richard", 275, 1910, "Ri", "Masculino", "AIDS", "Preto");
    System.out.println("Nome: " +  pai.getNome());
    System.out.println("Idade: " + pai.getIdade());
    System.out.println("Ano de Nascimento: " + pai.getAnoNascimento());
    System.out.println("Apelido: " +  pai.getApelido());
    System.out.println("Genero: " +  pai.getGenero());
    System.out.println("Doenca: " +  pai.getDoenca());
    System.out.println("Cor do Cabelo: " +  pai.getCorCabelo());
    
    //FILHOS
    System.out.println("\n----- FILHOS DA FAMILIA -----\n");
    Filhos filho = new Filhos("Thomas", 250, 1930, "Thom", "Masculino", "Malária", "Loiro", "Marrom");
    System.out.println("Nome: " +  filho.getNome());
    System.out.println("Idade: " + filho.getIdade());
    System.out.println("Ano de Nascimento: " + filho.getAnoNascimento());
    System.out.println("Apelido: " +  filho.getApelido());
    System.out.println("Genero: " +  filho.getGenero());
    System.out.println("Doenca: " +  filho.getDoenca());
    System.out.println("Cor do Cabelo: " +  filho.getCorCabelo());
    System.out.println("Cor dos Olhos: " +  filho.getCorOlhos());
    
    //NETOS
    System.out.println("\n----- NETOS DA FAMILIA -----\n");
    Netos neto = new Netos("Edward", 220, 1945, "Ed", "Masculino", "Ebola", "Preto", "Verde", "Nutricionista");
    System.out.println("Nome: " +  neto.getNome());
    System.out.println("Idade: " +  neto.getIdade());
    System.out.println("Ano de Nascimento: " +  neto.getAnoNascimento());
    System.out.println("Apelido: " +  neto.getApelido());
    System.out.println("Genero: " +  neto.getGenero());
    System.out.println("Doenca: " +  neto.getDoenca());
    System.out.println("Cor do Cabelo: " +  neto.getCorCabelo());
    System.out.println("Cor dos Olhos: " +  neto.getCorOlhos());
    System.out.println("Profissão: " +  neto.getProfissao());
    
    //BISNETOS
    System.out.println("\n----- BISNETOS DA FAMILIA -----\n");
    Bisnetos bisneto = new Bisnetos("Geoffrey", 100, 1960, "Geo", "Masculino", "Doença de Alzheimer", "Brancos", "Azuis", "Desenvolvedor de Software", 86);
    System.out.println("Nome: " + bisneto.getNome());
    System.out.println("Idade: " + bisneto.getIdade());
    System.out.println("Ano de Nascimento: " + bisneto.getAnoNascimento());
    System.out.println("Apelido: " + bisneto.getApelido());
    System.out.println("Genero: " + bisneto.getGenero());
    System.out.println("Doenca: " + bisneto.getDoenca());
    System.out.println("Cor do Cabelo: " + bisneto.getCorCabelo());
    System.out.println("Cor dos Olhos: " + bisneto.getCorOlhos());
    System.out.println("Profissão: " + bisneto.getProfissao());
    System.out.println("Peso:" + bisneto.getPeso());
    
    //TRINETOS
    System.out.println("\n----- TRINETOS DA FAMILIA -----\n");
Trinetos trineto = new Trinetos("Walter", 85, 1984, "Nao tem", "Masculino", "Doença de Chagas", "Preto", "Brancos", "Analista de Sistemas", 59, 1.80f);
    System.out.println("Nome: " + trineto.getNome());
    System.out.println("Idade: " + trineto.getIdade());
    System.out.println("Ano de Nascimento: " + trineto.getAnoNascimento());
    System.out.println("Apelido: " + trineto.getApelido());
    System.out.println("Genero: " + trineto.getGenero());
    System.out.println("Doenca: " + trineto.getDoenca());
    System.out.println("Cor do Cabelo: " + trineto.getCorCabelo());
    System.out.println("Cor dos Olhos: " + trineto.getCorOlhos());
    System.out.println("Profissão: " + trineto.getProfissao());
    System.out.println("Peso:" + trineto.getPeso());
    System.out.println("Altura: " + trineto.getAltura());
    
    
    //TETRANETOS
    System.out.println("\n----- TETRANETOS DA FAMILIA -----\n");
    Tetranetos tetraneto = new Tetranetos("Jovic", 25, 1998, "Nicolla", "Masculino", "COVID-19", "Brancos", "Vermelho", "Especialista em Segurança da Informação", 68, 2.20f, 7199999-9999);

    System.out.println("Nome: " + tetraneto.getNome());
    System.out.println("Idade: " + tetraneto.getIdade());
    System.out.println("Ano de Nascimento: " + tetraneto.getAnoNascimento());
    System.out.println("Apelido: " + tetraneto.getApelido());
    System.out.println("Genero: " + tetraneto.getGenero());
    System.out.println("Doenca: " + tetraneto.getDoenca());
    System.out.println("Cor do Cabelo: " + tetraneto.getCorCabelo());
    System.out.println("Cor dos Olhos: " + tetraneto.getCorOlhos());
    System.out.println("Profissão: " + tetraneto.getProfissao());
    System.out.println("Peso:" + tetraneto.getPeso());
    System.out.println("Altura: " + tetraneto.getAltura());
    System.out.println("Telefone: "+ tetraneto.getTelefone());
  }
}