#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "Stack.h"

int main()
{
    int i = 0;
    int item = 0;
    Stack *pStack = CreateStack(100);
    printf("Input 10 numbers :");
    for(i = 0; i < 10; i++){
        item = 0;
        scanf("%d", &item);
        Push(pStack, item);
    }
    printf("\n");
    CountStackItem(pStack);
    printf("\n");
    printf("Reversed :\n");
    while(pStack->top >= 0)
    {
        Top(pStack);
        item = Pop(pStack);
    }
    printf("\n");

    DestroyStack(pStack);
    pStack = 0;

    return 0;
}