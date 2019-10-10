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
    CountStackItem(H);
    printf("Is Stack Full after 10 times of Push()? : %s\n",IsFullStack(H)? "Yes" : "No");
    printf("Is Stack Empty after Push()? : %s\n",IsEmptyStack(H)? "Yes" : "No");

    DestroyStack(H);
    printf("Is Stack Empty after DestroyStack()? : %s\n",IsEmptyStack(H)? "Yes" : "No");

    return 0;
}