#include <stdlib.h>
#include <stdio.h>


typedef struct node{
  int valor;
  struct node *left;
  struct node *right;
  short altura; //short ocupa apenas 2 bytes de memória
}Node;


Node* newNode(int x){
  Node *new = malloc(sizeof(Node));
  if(new){
  new->valor = x;
  new->left = NULL;
  new->right = NULL;
  new->altura = 0;
    }else{
  printf("\nERRO ao alocar um novo NO!\n");
  return new;
    }
}

short maior(short a, short b){
  return (a > b)? a: b;
}


short alturaDoNode(Node *node){
  if(node == NULL){
    return -1;
  }else{
    return(node->altura);
  }
}


short fatorDeBalanceamento(Node *node){
  if(node){
    return (alturaDoNode(node->left)) - (alturaDoNode(node->right));
  }else{
    return 0;
  }
}

Node *rotacaoEsquerda(Node *r){
  Node *y, *f;
  y = r->right;
  f = y->left;
  y->left = r;
  r->right = f;
  
  r->altura = maior(alturaDoNode(r->left), alturaDoNode(r->right)) + 1;
  y->altura = maior(alturaDoNode(y->left), alturaDoNode(y->right)) + 1;
  
  return y;
}

Node *rotacaoDireita(Node *r){
  Node *y, *f;
  y = r->left;
  f = y->right;
  y->right = r;
  r->left = f;
  r->altura = maior(alturaDoNode(r->left), alturaDoNode(r->right)) + 1;
  y->altura = maior(alturaDoNode(y->left), alturaDoNode(y->right)) + 1;
  
  return y; 
}

Node* rotacaoDireitaEsquerda(Node *r){
  r->right = rotacaoDireita(r->right);
  return rotacaoEsquerda(r);
}

Node* rotacaoEsquerdaDireita(Node *r){
  r->left = rotacaoEsquerda(r->left);
  return rotacaoDireita(r);
}

Node* balancear(Node *raiz){
  short fb = fatorDeBalanceamento(raiz);
  
  //rotacao a esquerda
    if(fb < -1 && fatorDeBalanceamento(raiz->right) <= 0){
      raiz = rotacaoEsquerda(raiz);
    }
  //rotacao a direito
    else if(fb > 1 && fatorDeBalanceamento(raiz->left) >= 0){
      raiz = rotacaoDireita(raiz);
    }
  //rotacao dupla esquerda
    else if(fb > 1 && fatorDeBalanceamento(raiz->left) < 0){
      raiz = rotacaoEsquerdaDireita(raiz);
    }
  //rotacao dupla direita
  else if(fb < -1 && fatorDeBalanceamento(raiz->right) > 0){
      raiz = rotacaoDireitaEsquerda(raiz);
  }
  
  return raiz;
}

Node* inserir(Node *raiz, int x){
  if(raiz == NULL){
    return newNode(x);
  }else{
    if(x < raiz->valor){
      raiz->left = inserir(raiz->left, x);
    }else if(x > raiz->valor){
      raiz->right = inserir(raiz->right, x);
    }else{
      printf("\nInsercao nao realizada\n");
    }
  }
  raiz->altura = maior(alturaDoNode(raiz->left), alturaDoNode(raiz->right) +1);
  raiz = balancear(raiz);
  return raiz;
}

Node *remocao(Node *raiz, int chave){
  if(raiz == NULL){
    printf("\nValor nao encontrado!\n");
    return NULL;
  } else{ //procurar um nó para remover
    if(raiz->valor == chave){
      //remover os nós que nao tem filho
      if(raiz->left == NULL && raiz->right == NULL){
        free(raiz);
        printf("Elemento folha removido: %d!\n", chave);
        return NULL;
      }else{
        //remover nós que possem 2 filhos
        if(raiz->left != NULL && raiz->right != NULL){
          Node *aux = raiz->left;
          while(aux->right != NULL){
            aux = aux->right;
          }
          raiz->valor = aux->valor;
          aux->valor = chave;
          printf("\nElemento trocado: %d !\n", chave);
          return raiz;
        }else{
          //remover nós que possuem apenas 1 filho
          Node* aux;
            if(raiz->left != NULL){
              aux = raiz->left;
            } else{
              aux = raiz->right;
            }
            free(raiz);
            printf("\nElemento com 1 filho removido: %d\n", chave);
            return aux;
        }
      }
    } else{
        if(chave < raiz->valor){
          raiz->left = remocao(raiz->left, chave);
        }else{
           raiz->right = remocao(raiz->right, chave);
      } 
  }
  
  raiz->altura = maior(alturaDoNode(raiz->left), alturaDoNode(raiz->right)) + 1;
  raiz = balancear(raiz);
  return raiz;
  }
}


  void imprimir(Node *raiz, int nivel){
    int i;
    if(raiz){   
      imprimir(raiz->right, nivel + 1);
      printf("\n\n");
      for(i = 0; i < nivel; i++){
        printf("\t");
      }
      printf("%d", raiz->valor);
      imprimir(raiz->left, nivel + 1);
    }
  }

int main(){
    int opcao, valor;
  Node *raiz = NULL;
  
  do{
    printf("\n\n\t0 - Sair\n\t1- Inserir\n\t2- Remover\n\t3 - Imprimir\n\n");
    scanf("%d", &opcao);
    switch(opcao){
      case 0:
        printf("Saindo!!!");
        break;
       case 1:
        printf("\tDigite o valor a ser inserido: ");
        scanf("%d", &valor);
        raiz = inserir(raiz, valor);
        break;
       case 2:
        printf("\tDigite o valor a ser Removido: ");
        scanf("%d", &valor);
        raiz = remocao(raiz, valor);
        break;
       case 3:
        imprimir(raiz, 1);
        break;
       default:
       printf("\nOpcao Invalida!!!\n");
    }
   }while(opcao != 0);
  return 0;
 } 

