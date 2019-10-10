#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "LinkedStack.h"

int main()
{
    int i = 0;
    int item = 0;
    HEAD *H = CreateStack(100);
    printf("Input 10 numbers :");
    for(i = 0; i < 10; i++){
        item = 0;
        scanf("%d", &item);
        Push(H, item);
    }
    printf("\n");
    int count = CountStackItem(H);
    printf("Reversed Output :");
    for(i=0;i<count;i++) printf("%d ",Pop(H));
    printf("\n");
    
    DestroyStack(H);

    return 0;
}