#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "BankQueue.h"

int main()
{
    Queue *Q = CreateQueue();
    
    while(1){
        char sel[1000];
        printf("In (0), out (1), exit (2) : ");
        scanf("%s",sel);
        
        if(!strcmp(sel,"0")){
            char name[40];
            printf("Customer : ");
            scanf(" %[^\n]",name);
            Enqueue(Q,name);
            QueueState(Q);
        }
        else if(!strcmp(sel,"1")){                
            char name[40];
            printf("Customer : ");
            scanf(" %[^\n]",name);
            PopQueue(Q,name);
            QueueState(Q);
        }
        else if(!strcmp(sel,"2")) return 1;                
        else printf("Error : Input must be in 0~2\n");
    }
    
    DestroyQueue(Q);
    return 0;
}