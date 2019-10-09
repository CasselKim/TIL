#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <math.h>
#include "LinkedListStack.h"

typedef struct {
    int number;
    char operator;
    char bracket;

    int type;
}token;


int isBracket(char c)
{
    if(c=='(') return 1;
    else if(c==')') return 2;
    else return 0;
}

bool isOperator(char c)
{
    if( c=='+' || c=='-' || c=='*' || c=='/') return true;
    else return false;
}


int main()
{
    HEAD *H = CreateStack(1000);
    char input[100];

    int i=0;
    printf("Input expression : ");
    scanf("%[^\n]",input);
    
    token *tokend = (token *)malloc(sizeof(token)*strlen(input));
    for(int j=0; j<strlen(input);j++) { (tokend+j) -> number = 0; (tokend+j) -> type = 0; }
    
    bool end=false;
    
    for(char *p = input; *p; p++)
    {
        if(*p==' ') continue;

        else if(isBracket(*p)){
            if(i) i+=1;
            (tokend+i)->bracket = *p;
            (tokend+i)->type=3;
    
            end = true;
        }

        else if(isOperator(*p)){
            i+=1;
            (tokend+i)->operator = *p;
            
            switch (*p)
            {
                case '+' : 
                case '-' : (tokend+i)->type=21; break;
                case '*' : 
                case '/' : (tokend+i)->type=22; break;
                default : (tokend+i)->type=0; break;
            }
            
            end = true;
            
        }

        else {
            if(end) { i+=1; end = false; }
            (tokend+i)->number = (tokend+i)->number*10 + (int)(*p) - 48;
            (tokend+i)->type = 1;
        }

    }

    i=-1;
    for(token *t = tokend ; t->type ; t++){
        if( t->type == 1 ) { (++i+tokend)->number = t->number; (i+tokend)->type = 1; }
        else if( t->bracket == '(') Push(H,'(');
        else if( t->bracket == ')')
        {
            while(!IsEmptyStack(H) && Top(H) != '('){
                if (Top(H)==')') { (++i+tokend)->bracket = Pop(H); (i+tokend)->type = 3; }
                else { (++i+t)->operator = Pop(H); (i+tokend)->type = 2; }
            }
            if(!IsEmptyStack(H) && Top(H) != '(') return -1;
            else Pop(H);
        } 
        else
        {
            while(!IsEmptyStack(H) && t->type <= ((Top(H)=='+' || Top(H)=='-')?21:22))
                { (++i+tokend)->operator = Pop(H); (i+tokend)->type = 2; printf("Debugging...1 : t->type : %d\n",t->type);}
            Push(H,t->operator);
        }
    }
        
    while(!IsEmptyStack(H)) { 
        (++i+tokend)->operator = Pop(H);
         (i+tokend)->type = 2;
          printf("Debugging...2 : %c\n",(i+tokend)->operator);}

    printf("\n\n");
    for(token *o=tokend ; o->type ; o=o+1){
        //printf("%d,%c,%c,%d\n",o->number,o->bracket,o->operator,o->type);
        switch(o->type){
            case 1 : printf("%d ",o->number); break;
            case 2 : 
            case 21 : 
            case 22 : printf("%c ",o->operator); break;
            case 3 : printf("%c ",o->bracket); break;
        }
    }

    free(tokend);
    DestroyStack(H);
    
    return 0;
}