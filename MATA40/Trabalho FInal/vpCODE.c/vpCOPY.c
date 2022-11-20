#include <stdio.h>
#include <stdlib.h>

enum nodeColor{
    RED, 
    BLACK
};

typedef struct rbnode{
    int data;              // data
    int color;             // 1-red, 0-black
    struct rbnode *parent; // parent
    struct rbnode *right;  // right-child
    struct rbnode *left;   // left child
    short height;
} rbNode;

rbNode *root = NULL;

rbNode *newNode(int x){
    rbNode *new = malloc(sizeof(rbNode));
    if (new)
    {
        new->data = x;
        new->left = NULL;
        new->right = NULL;
        new->parent = NULL;
        new->color = RED;
        new->height = 0;
    }
    else
    {
        printf("\nEROO ao alocar um novo NO!\n");
    }
    return new;
}

short max(short a, short b)
{
    return (a > b) ? a : b;
}

short nodeHeight(rbNode *node)
{
    if (node == NULL)
    {
        return -1;
    }
    else
    {
        return (node->height);
    }
}

rbNode *insert(rbNode *root, int value)
{
    if (root == NULL)
    {
        return newNode(value);
    }
    else
    {
        if (value < root->data)        {
            root->left = insert(root->left, value);
            root->left->parent = root;
        }
        else if(value > root->data)        {
            root->right = insert(root->right, value);
            root->right->parent = root;
        }
    }
    return root;
}

void rightRotate(rbNode *value){
    rbNode *l = value->left;
    value->left = l->right;
    if (value->left)
        value->left->parent = value;
    value->parent = value->parent;
    if (value->parent == NULL)
        root = l;
    else if (value == value->parent->left)
        value->parent->left = l;
    else
        value->parent->right = l;
    l->right = value;
    value->parent = l;
}

void leftRotate(rbNode *value)
{
    rbNode *r = value->right;
    value->right = r->left;
    if (value->right)
        value->right->parent = value;
    r->parent = value->parent;
    if (!value->parent)
        root = r;
    else if (value == value->parent->left)
        value->parent->left = r;
    else
        value->parent->right = r;
    r->left = value;
    value->parent = r;
}

void fixup(rbNode *root, rbNode *value)
{
    rbNode *parent_pt = NULL;
    rbNode *grand_parent_pt = NULL;
      while ((value != root) && (value->color != BLACK) && (value->parent->color == RED)){
        parent_pt = value->parent;
        grand_parent_pt = value->parent->parent;

        /*  Case : A
             Parent of pt is left child
             of Grand-parent of
           pt */
        if (parent_pt == grand_parent_pt->left)
        {
            rbNode *uncle_pt = grand_parent_pt->right;

            /* Case : 1
                The uncle of pt is also red
                Only Recoloring required */
            if (uncle_pt != NULL && uncle_pt->color == RED)
            {
                grand_parent_pt->color = RED;
                parent_pt->color = BLACK;
                uncle_pt->color = BLACK;
                value = grand_parent_pt;
            }
            else
            {

                /* Case : 2
                     pt is right child of its parent
                     Left-rotation required */
                if (value == parent_pt->right)
                {
                    leftRotate(parent_pt);
                    value = parent_pt;
                    parent_pt = value->parent;
                }

                /* Case : 3
                     pt is left child of its parent
                     Right-rotation required */
                rightRotate(grand_parent_pt);
                int t = parent_pt->color;
                parent_pt->color = grand_parent_pt->color;
                grand_parent_pt->color = t;
                value = parent_pt;
            }
        }

        /* Case : B
             Parent of pt is right
             child of Grand-parent of
           pt */
        else
        {
            rbNode *uncle_pt = grand_parent_pt->left;

            /*  Case : 1
                The uncle of pt is also red
                Only Recoloring required */
            if ((uncle_pt != NULL) && (uncle_pt->color == RED))
            {
                grand_parent_pt->color = RED;
                parent_pt->color = BLACK;
                uncle_pt->color = BLACK;
                value = grand_parent_pt;
            }
            else
            {
                /* Case : 2
                   pt is left child of its parent
                   Right-rotation required */
                if (value == parent_pt->left)
                {
                    rightRotate(parent_pt);
                    value = parent_pt;
                    parent_pt = value->parent;
                }

                /* Case : 3
                     pt is right child of its parent
                     Left-rotation required */
                leftRotate(grand_parent_pt);
                int t = parent_pt->color;
                parent_pt->color = grand_parent_pt->color;
                grand_parent_pt->color = t;
                value = parent_pt;
            }
        }
    }
    root->color = 0;
}

void imprimir(rbNode *node, int level){
    if (node == NULL){
        return;
    }else{
        imprimir(node->left, level + 1);
        printf("\n\n");
        for (int i = 0; i < level; i++)
        {
            printf("\t");
        }
        printf("%d ", node->data);
        imprimir(node->right, level + 1);
        return;
    }
}

int main()
{
    int option, data;
    rbNode *root = NULL;
    do
    {
        printf("1. Insertion\t2. Deletion\n");
        printf("3. Traverse\t0. Exit");
        printf("\nEnter your choice:");
        scanf("%d", &option);
        switch (option)
        {
        case 1:
            printf("Enter the element to insert:");
            scanf("%d", &data);
            for(int i  = 0; i < data; i++){
            rbNode *temp = malloc(sizeof(rbNode));
            temp->right = NULL;
            temp->left = NULL;
            temp->parent = NULL;
            temp->data = data;
            temp->color = RED;
            root = insert(root, data);
            fixup(root, temp);
            }
            break;
        case 2:
            printf("Enter the element to delete:");
            scanf("%d", &data);
            // root = deletion(root, data);
            break;
        case 3:
            imprimir(root, 1);
            printf("\n");
            break;
        default:
            printf("Not available\n");
        }
    } while (option != 0);
    return 0;
}