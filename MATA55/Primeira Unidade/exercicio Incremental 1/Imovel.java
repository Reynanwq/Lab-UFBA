/*

   1. Quais a classes vc consegue identificar para este software?
   
   RESPOSTA: A classe Imovel, classe Proprietário e a classe inquilino.

   2. Implemente as classes Imóvel e Proprietário métodos construtores e acessores.    

   Um Imóvel tem um numero de IPTU, rua, número, cep, estado, cidade, tipo (casa, apto) e a utilização (campo, praia)

   Um proprietário tem nome, cpf , identidade, rua, número, cep, estado, cidade.*/
public class Imovel
{
    public int iptu;
    public String rua;
    public int numero;
    public int cep;
    public String estado;
    public String cidade;
    public String tipo;
    public String utilizacao;
    
    /*-------- construtor -------*/
    
    public Imovel (int iptu, String rua, int numero, int cep, String estado, String cidade, String tipo, String utilizacao){
        this.iptu = iptu;
        this.rua = rua;
        this.numero = numero;
        this.cep = cep;
    }
    
    /*------ metodos get -------*/
    
    public int getIptu(){
        return this.iptu;
    }
    
    public String getRua(){
        return this.rua;
    }
    
    public int getNumero(){
        return this.numero;
    }
    
    public int getCep(){
        return this.cep;
    }
    
    public String getEstado(){
        return this.estado;
    }
    
    public String getCidade(){
        return this.cidade;
    }
    
    public String getTipo(){
        return this.tipo;
    }
    
    public String getUtilizacao(){
        return this.utilizacao;
    }
    
    /*-------- metodos set ---------*/
    
    public void setIptu(){
        this.iptu = iptu;
    }
    
    public void setRua(){
        this.rua = rua;
    }
    
     public void setNumero(){
        this.numero = numero;
    }
    
     public void setCep(){
        this.cep = cep;
    }
    
     public void setEstado(){
        this.estado = estado;
    }
    
     public void setCidade(){
        this.cidade= cidade;
    }
    
     public void setTipo(){
        this.tipo = tipo;
    }
    
    public void setUtilizacao(){
        this.utilizacao = utilizacao;
    }
    
    
	public static void main(String[] args) {
		
	}
}
