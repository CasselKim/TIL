#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "LinkedStack.h"

int main()
{
    int i = 0;
    int integer = 0;
    HEAD *H = CreateStack(100);
    while(1){    
        printf("Input Positive Integer : ");
        scanf("%d", &integer);
        if(integer<0){
            printf("Error! Please input positive integer.\n");
            continue;
        }
        
        int count=0;
        while(integer/2){
            Push(H,integer%2);
            integer=integer/2;
            count++;
        }
        Push(H,1);
        
        printf("Converted to binary : ");
        for(i=0; i<count+1; i++){
            printf("%d",Pop(H));
        }
        printf("(2)\n");

        DestroyStack(H);
        break;
    }
    return 0;
}