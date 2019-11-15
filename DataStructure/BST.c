#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

typedef struct __tNODE__ {
    void *data;
    struct __tNODE__ *left, *right;
} TreeNode;
typedef struct{
    int count;
    int (*compare)(void* argu1, void* argu2);
    TreeNode* root;
} BST_TREE;

typedef TreeNode Element2;

typedef struct __qNODE__{
    Element2* data;
    struct __qNODE__ *next;
}NODE;
typedef struct {
    int count;
    NODE *front, *rear;
}Queue;

// BST part
int compareInt(void *argu1, void *argu2);
int compareStr(void *argu1, void *argu2);
BST_TREE* BST_Create(int (*compare)(void* argu1, void*argu2));
TreeNode *_insert(BST_TREE *tree, TreeNode *root, TreeNode *newPtr);
bool BST_Insert(BST_TREE *tree, void *data);
void *_retrieve(BST_TREE *tree, void* data, TreeNode* root);
void *BST_Retrieve (BST_TREE *tree, void *keyPtr);
void Preorder(TreeNode *root,void(*process)(void* data));
void Inorder(TreeNode *root,void(*process)(void* data));
void Postorder(TreeNode *root,void(*process)(void* data));
void Depthorder(TreeNode *root,void(*process)(void* data));
void *BST_Traversal(BST_TREE *tree, void(*process)(void* data), void (*traverse)(TreeNode *root,void(*process)(void* data)));
void printInt(void *stuPtr);
void printStr(void* stuPtr);
int compareInt(void *argu1, void *argu2);
int compareStr(void *argu1, void *argu2);

// Queue Part
Queue* CreateQueue();
void Enqueue(Queue *q, Element2 *item);
Element2 *Dequeue(Queue *q);
bool IsEmptyQueue(Queue *q);
void DestroyQueue(Queue *q);


int main(){
    
    // Test bench
    //      I
    //  A       S
    //        L   S
    //         R   U
    
    printf("//Creating BST//\n");
    BST_TREE* tree = BST_Create(compareStr);
    printf("\n//Inserting BST//\n");
    BST_Insert(tree,"I");
    BST_Insert(tree,"S");
    BST_Insert(tree,"L");
    BST_Insert(tree,"S");
    BST_Insert(tree,"U");
    BST_Insert(tree,"A");
    BST_Insert(tree,"R");
    printf("\n//Retrieving BST//\n");
    BST_Retrieve(tree,"R");
    printf("\n//Traversing BST, Inorder//\n");
    BST_Traversal(tree,printStr,Inorder);
    printf("\n//Traversing BST, Preorder//\n");
    BST_Traversal(tree,printStr,Preorder);
    printf("\n//Traversing BST, Postorder//\n");
    BST_Traversal(tree,printStr,Postorder);
    printf("\n//Traversing BST, Depthorder//\n");
    BST_Traversal(tree,printStr,Depthorder);
    return 0;   
    
}


// Binary Search Tree Part
BST_TREE* BST_Create(int (*compare)(void* argu1, void*argu2)){
    BST_TREE* tree = NULL;
    
    tree = (BST_TREE*)malloc(sizeof(BST_TREE));
    if(tree){
        tree->root = NULL;
        tree->count = 0;
        tree->compare = compare;
    }
    printf("Binary Search Tree Created\n");
    return tree;
} // BST_Create
TreeNode *_insert(BST_TREE *tree, TreeNode *root, TreeNode *newPtr){
    if(!root) return newPtr;
    
    if(tree->compare(newPtr->data,root->data)<0){
        // new data < root data
        root->left = _insert(tree, root->left, newPtr);
        return root;
    } else {
        // new data >= root data
        root->right = _insert(tree, root->right, newPtr);
        return root;
    }
    
    return root;
}
bool BST_Insert(BST_TREE *tree, void *data){
    TreeNode *newPtr=NULL;
    
    //given data, allocate a new TreeNode
    newPtr=(TreeNode*)malloc(sizeof(TreeNode));
    if(!newPtr) return false;
    newPtr->right;
    newPtr->left;
    newPtr->data = data;
    
    //insert the node into BST
    if(tree->count==0) tree->root = newPtr;
    else _insert(tree, tree->root, newPtr);
    
    (tree->count)++;
    
    printf("Item \"%s\" is inserted in BST\n",(char*)data);
    return true;
} // BST_Insert
void *_retrieve(BST_TREE *tree, void* data, TreeNode* root){
    printf("Searching...We are in %s now\n",(char*)root->data);
    if(root){
        if(tree->compare(data, root->data)<0)
            return _retrieve(tree, data, root->left);
        else if(tree->compare(data, root->data)>0)
            return _retrieve(tree, data, root->right);
        else
            return root->data;
    }
    else
        return NULL;
}
void *BST_Retrieve (BST_TREE *tree, void *keyPtr){
    if(tree->root)
        return _retrieve(tree, keyPtr, tree->root);
    else
        return NULL;
}
void Preorder(TreeNode *root,void(*process)(void* data)){
    if(root){
        (*process)(root->data);
        Preorder(root->left,process);
        Preorder(root->right,process);
    }
}
void Inorder(TreeNode *root,void(*process)(void* data)){
    if(root){
        Inorder(root->left,process);
        (*process)(root->data);
        Inorder(root->right,process);
    }
}
void Postorder(TreeNode *root,void(*process)(void* data)){
    if(root){
        Postorder(root->left,process);
        Postorder(root->right,process);
        (*process)(root->data);
    }
}
void Depthorder(TreeNode *root,void(*process)(void* data)){
    if(root){
        Queue *queue = CreateQueue();
        while(root){
            (*process)(root->data);
            if(root->left) Enqueue(queue,root->left);
            if(root->right) Enqueue(queue,root->right);
            
            if(!IsEmptyQueue(queue)) root=Dequeue(queue);
            else root=NULL;
        }
        DestroyQueue(queue);
    }
}
void *BST_Traversal(BST_TREE *tree, void(*process)(void* data),void (*traverse)(TreeNode *root,void(*process)(void* data))){
    if(tree->root)
        traverse(tree->root, process);
    else
        return NULL;
}
void printInt(void *stuPtr){
    int *intPtr = (int*)stuPtr;
    printf("%d ",*intPtr);
}
void printStr(void* stuPtr){
    char *str = (char*)stuPtr;
    printf("%s ",str);
}
int compareInt(void *argu1, void *argu2){
    return *(int*)argu1 - *(int*)argu2;
} // A - B
int compareStr(void *argu1, void *argu2){
    return strcmp((char*)argu1, (char*)argu2);
} // A < B 이면 -1,   A = B 이면 0,   A > B 이면 1


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
    //N -> data = (TreeNode*)malloc(sizeof(item));
    //memmove(N -> data,item,sizeof(item)+1);
    N -> next = NULL;
    
    if(q->count<=0) q -> front = q -> rear = N;
    else
    {
        q -> rear -> next = N;
        q -> rear = N;
    }
    q -> count++;
    //printf("item %s is Enqueued at the Rear|| Front : %p, Rear : %p\n",item,q -> front,q -> rear);
}
Element2 *Dequeue(Queue *q){
    NODE *N = NULL;
    Element2 *item;
    
    if(q -> count <= 0) { printf("Empty Queue!!\n"); return 0; }
    
    N = q -> front;
    item = N -> data;
    //memmove(item,N -> data,sizeof(N -> data)+1);
    
    if(q -> count == 1) q -> front = q -> rear = NULL;
    else q -> front = N -> next;
    
    free(N);
    q -> count--;
    //printf("item %s is Dequeued from Front || Front : %p, Rear : %p\n",item,q -> front,q -> rear);
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