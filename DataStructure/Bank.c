#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "LinkedQueue.h"

void QueueState(Queue *q)
{
    NODE *pNow = NULL;
    NODE *pNext = NULL;
    
    printf("The current status of Queue : (");
    for(pNow=q->front ; pNow ; pNow=pNext)
    {
        pNext = pNow->next;
        printf("%s, ",pNow -> data);
    }
    printf(")\n\n");
}

int main()
{
    Queue *Q = CreateQueue();
    
    char sel[1000];
    printf("In (0), out (1), exit (2) : ");
    scanf("%s",sel);

    if(!strcmp(sel,"0")){
        char name[40];
        printf("Customer : ");
        scanf("%[^\n]",name);
        Enqueue(Q,name);
        QueueState(Q);
    }
    else if(!strcmp(sel,"1")){                
        char name[40];
        printf("Customer : ");
        scanf("%s",name);
        Dequeue(Q);
        QueueState(Q);
    }
    else if(!strcmp(sel,"2")) return 1;                
    else printf("Error : Input must be in 0~2\n");
    
    
    DestroyQueue(Q);
    return 0;
}
