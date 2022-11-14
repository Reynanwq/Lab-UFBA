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


*/
