#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

typedef char Element;

typedef struct __TreeNode__{
    Element data;
    struct __TreeNode__ *left,*right;
}TreeNode;

typedef TreeNode Element2;

typedef struct __NODE__{
    Element2* data;
    struct __NODE__ *next;
}NODE;

typedef struct {
    int count;
    NODE *front, *rear;
}Queue;

// Tree Part
TreeNode *CreateTreeNode(TreeNode *left, Element item, TreeNode *right);
void InsertData(TreeNode* root, char* string);
TreeNode *LeftTree(TreeNode *root);
Element TreeData(TreeNode *root);
TreeNode *RightTree(TreeNode *root);    
bool IsEmpty(TreeNode *root);
void DestroyTree(TreeNode *root);
void Preorder(TreeNode *root);
void Inorder(TreeNode *root);
void Postorder(TreeNode *root);
TreeNode *CopyTree(TreeNode *root);
void LevelOrder(TreeNode *root);

// Queue Part
Queue* CreateQueue();
void Enqueue(Queue *q, Element2 *item);
Element2 *Dequeue(Queue *q);
bool IsEmptyQueue(Queue *q);
void DestroyQueue(Queue *q);

int main()
{
    char* input = (char*)malloc(sizeof(char)*1000);
    printf("Input string : ");
    scanf("%[^\n]",input);
    
    TreeNode *root = CreateTreeNode(NULL,*(input++),NULL);
    InsertData(root,input);
    
    
    
    printf("\nPreorder : ");
    Preorder(root);
    
    printf("\nInorder : ");
    Inorder(root);
    
    printf("\nPostorder : ");
    Postorder(root);
    
    printf("\nLevelorder : ");
    LevelOrder(root);
    printf("\n\n");
    
    printf("Tree copied.. \n");
    TreeNode *CopiedRoot = CopyTree(root);
    printf("Copy complete!!\n");
    
    printf("\nPreorder : ");
    Preorder(CopiedRoot);
    
    printf("\nInorder : ");
    Inorder(CopiedRoot);
    
    printf("\nPostorder : ");
    Postorder(CopiedRoot);
    
    printf("\nLevelorder : ");
    LevelOrder(CopiedRoot);
    
    printf("\n\n");
    
    DestroyTree(root);
    DestroyTree(CopiedRoot);
    
    free(input-1);
    return 0;
}

// Tree Part
TreeNode *CreateTreeNode(TreeNode *left, Element item, TreeNode *right){
    TreeNode *Node = (TreeNode*)malloc(sizeof(TreeNode));
    if(Node==NULL) return NULL;
    
    
    Node->data = item;
    
    Node->left=left;
    Node->right=right;
    
    printf("TreeNode %c is created\n",item);
    
    return Node;
}

void InsertData(TreeNode* root, char* string){
    
    if(IsEmpty(root)) return;
    
    Queue *queue = CreateQueue();
    
    for(char *p = string;*p;){

        root->left = CreateTreeNode(NULL,*(p++),NULL);
        Enqueue(queue,root->left);
        
        if(!*p) break;
        
        root->right = CreateTreeNode(NULL,*(p++),NULL);
        Enqueue(queue,root->right);
        
        root=Dequeue(queue);
    }
    
    DestroyQueue(queue);
}


TreeNode  *LeftTree(TreeNode *root){
    if(IsEmpty(root)) return NULL;
    else return root->left;
}
Element TreeData(TreeNode *root){
    if(IsEmpty(root)) return ' ';
    else return root->data;   
}
TreeNode *RightTree(TreeNode *root){
    if(IsEmpty(root)) return NULL;
    else return root->right;
}
bool IsEmpty(TreeNode *root){
    if(root==NULL) return true;
    else return false;
}
bool IsEnd(TreeNode *root){
    if( (root->left==NULL) && (root->right==NULL) ) return true;
    else return false;
}
void DestroyTree(TreeNode *root){
    printf("Tree Destroied\n");
    free(root);
}
TreeNode *CopyTree(TreeNode *root){
    if(IsEmpty(root)) return NULL;
    return CreateTreeNode(CopyTree(root->left),root->data,CopyTree(root->right));
}


void Preorder(TreeNode *root){
    if(IsEmpty(root)) return ;
    
    printf("%c",root->data);
    Preorder(root->left);
    Preorder(root->right);
}
void Inorder(TreeNode *root){
    if(IsEmpty(root)) return ;
    
    Inorder(root->left);
    printf("%c",root->data);
    Inorder(root->right);
}
void Postorder(TreeNode *root){
    if(IsEmpty(root)) return ;
    
    Postorder(root->left);
    Postorder(root->right);
    printf("%c",root->data);
}
void LevelOrder(TreeNode *root){
    if(root == NULL) return;
    
    Queue *queue = CreateQueue();
    while(root){
        printf("%c",root->data);
        if(root->left) Enqueue(queue,root->left);
        if(root->right) Enqueue(queue,root->right);
        
        if(!IsEmptyQueue(queue)) root=Dequeue(queue);
        else root=NULL;
    }
    DestroyQueue(queue);
}


// Queue Part
Queue* CreateQueue(){
    Queue *q = (Queue*)malloc(sizeof(Queue));
    if(q==NULL) return NULL;
    
    q -> count = 0;
    q -> front = q -> rear = NULL;
    
    return q;
}
void Enqueue(Queue *q, Element2 *item){
    NODE *N = (NODE*)malloc(sizeof(NODE));
    if(N==NULL) return;
    
    N -> data = item;
    N -> next = NULL;
    
    if(q->count<=0) q -> front = q -> rear = N;
    else
    {
        q -> rear -> next = N;
        q -> rear = N;
    }
    q -> count++;
}
Element2 *Dequeue(Queue *q){
    NODE *N = NULL;
    Element2 *item;
    
    if(q -> count <= 0) { printf("Empty Queue!!\n"); return 0; }
    
    N = q -> front;
    item = N -> data;
    
    if(q -> count == 1) q -> front = q -> rear = NULL;
    else q -> front = N -> next;
    
    free(N);
    q -> count--;
    return (TreeNode*)item;
}
bool IsEmptyQueue(Queue *q){
    return q -> count <= 0;
}
void DestroyQueue(Queue *q){
    NODE *pNow = NULL;
    NODE *pNext = NULL;
    
    for(pNow=q->front ; pNow ; pNow=pNext)
    {
        pNext = pNow->next;
        free(pNow);
    }
    
    q -> count = 0;
    q -> front = q -> rear = NULL;
    
    free(q);
}