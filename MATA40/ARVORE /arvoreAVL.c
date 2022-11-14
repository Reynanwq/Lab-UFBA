/*
MESMA QUANTIDADE DE NÍVEIS PARA AMBAS AS SUBARVORES
TANTO PARA DIREITA QUANTO PARA ESQUERDA

MAIOR QUE 1 E MENOR QUE -1 = DESEQUILIBRADA

corrigir com rotações:

rotação a esquerda
rotação a direita
rotação dupla a esquerda
rotação dupla a direita

TODO NÓ PRECISA TER UM CAMPO "ALTURA"

typedef struct node{
  int valor;
  struct node *left;
  struct node *right;
  short altura; //short ocupa apenas 2 bytes de memória
}Node;

CRIAR UM NOVO NÓ

Node* newNode(int x){
  Node *new = malloc(sizeof(Node));
  if(new){
  new->valor = x;
  new->left = NULL;
  new->right = NULL;
  new->altura = 0;
} else{
  printf("\nERRO ao alocar um novo NO!\n");
  return novo;
}

DESCOBRIR A ALTURA DE CADA NÓ
PARA FAZER ISSO, PRECISAMOS DESCOBRIR A ALTURA DA SUBARVORE DA ESQUERDA E DA DIREITA
DADA A ALTURA DE DUAS SUBARVORES, RETORNO O MAIOR VALOR

short maior(short a, short b){
  return (a > b)? a: b;
}

ALTURA DE UM NÓ:
retorna a altura de um NÓ ou -1 caso ele seja null.

short alturaDoNode(Node *node){
  if(node == NULL){
    return -1;
  }else{
    return(node->altura);
  }
}

FATOR DE BALANCEAMENTO:
pode ser, no máximo 1 ou -1.
fator de balanceamento negativo: DIREITA
fator de balanceamento positivo: ESQUERDA

short fatorDeBalanceamento(Node *node){
  if(node){
    return (alturaDoNode(node->left)) - (alturaDoNode(node->direita));
  }else{
    return 0;
  }
}

*/
