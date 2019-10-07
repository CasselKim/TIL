#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct __NODE__{
    int item;
    struct __NODE__ *next;
}NODE;

typedef struct {
    int MAX;
    int count;
    NODE *top;
}HEAD;

HEAD *CreateStack(int size){
    HEAD *H = (HEAD*)malloc(sizeof(HEAD));
    if(H==NULL) return NULL;
    H -> MAX = size;
    H -> count = 0;
    H -> top = NULL;

    return H;
}

void Push(HEAD *H, int item){
    NODE *N = (NODE *)malloc(sizeof(NODE));
    if(N==NULL) return ;
    if(H -> count == H -> MAX){
        printf("FULL Stack!!\n");
        return ;
    }
    N -> item = item;
    N -> next = H -> top;

    H -> top = N;
    H -> count++;

    printf("%d_th item %d is pushed\n",H->count,N->item);
}

int Pop(HEAD *H){
    NODE *clear = (NODE *)malloc(sizeof(NODE));
    NODE *temp = (NODE *)malloc(sizeof(NODE));
    if(clear==NULL || temp==NULL) return -1;
    if(H -> top == NULL){
        printf("Empty Stack!!\n");
        return -1;
    }
    temp = H -> top;

    int popped;
    popped = H -> top -> item;
    printf("%d_th item %d is popped\n\n",H->count,popped);

    H -> top = temp -> next;
    H -> count--;
    
    temp = clear;
    free(temp);
    
    return popped;
}

int Top(HEAD *H){
    if(H -> top == NULL){
        printf("Empty Stack!!\n");
        return -1;
    }
    else {
        printf("%d_th item %d is on the top of Stack\n",H->count,H->top->item);
        return H -> top -> item;
    }
}

void DestroyStack(HEAD *H){
    NODE *clear = (NODE *)malloc(sizeof(NODE));
    NODE *temp = (NODE *)malloc(sizeof(NODE));
    if(clear==NULL || temp==NULL) return ;
    if(H -> top == NULL) return ;

    while(H -> count){
        temp = H -> top;

        H -> top = temp -> next;
        H -> count--;
        
        temp = clear;
        free(temp);
    }
    free(H);
}

bool IsFullStack(HEAD *H){
    if(H -> MAX == H -> count) printf("FULL Stack!!\n");
    return (H -> MAX == H -> count)? true : false;
}

bool IsEmptyStack(HEAD *H){
    if(H -> top == NULL) printf("Empty Stack!!\n");
    return (H -> top == NULL)? true : false;
}

int CountStackItem(HEAD *H){
    printf("The number of Stack Items : %d\n",H->count);
    return H -> count;
}

void ClearStack(HEAD *H){
    NODE *clear = (NODE *)malloc(sizeof(NODE));
    NODE *temp = (NODE *)malloc(sizeof(NODE));
    if(clear==NULL || temp==NULL) return ;
    if(H -> top == NULL) return ;

    while(H -> count){
        temp = H -> top;

        H -> top = temp -> next;
        H -> count--;
        
        temp = clear;
    }
}
