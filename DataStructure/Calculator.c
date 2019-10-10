#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include "LinkedStack.h"

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

double calculate(double b, double a, char operator)
{
    switch(operator)
    {
        case '+' : return b+a;
        case '-' : return b-a;
        case '*' : return b*a;
        case '/' : return b/a;
        default : return -1;
    }
}


int main()
{
    HEAD *operands = CreateStack(100);
    HEAD *operators = CreateStack(100);
    char input[100];

    int i=0;
    printf("Input expression : ");
    scanf("%[^\n]",input);
    
    token *tokend = (token *)malloc(sizeof(token)*strlen(input));
    for(int j=0; j<strlen(input);j++) { (tokend+j) -> number = 0; (tokend+j) -> type = 0; }
    
    
    bool end=false;
    bool No_Operator = false;
    bool No_Number = false;
    int isOpened = 0;
    
    for(char *p = input; *p; p++)
    {
        // remove blank
        if(*p==' ') continue;

        // save bracket to the struct tokend
        else if(isBracket(*p)){
            if(No_Operator && *p=='(') { printf("Wrong operator input\n"); return -1; }
            if(No_Number && *p==')') { printf("Wrong number input\n"); return -1; }
            if(i) i+=1;
            (tokend+i)->bracket = *p;
            (tokend+i)->type=3;
            
            end = true;
            
            if (*p=='(') isOpened++;
            else isOpened--;
        }

        // save operator to the struct tokend
        else if(isOperator(*p)){
            if(No_Number) { printf("Wrong number input\n"); return -1; }
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
            No_Operator = false;
            No_Number = true;
        }

        // save number to the struct tokend
        else {
            if(end) { i+=1; end = false; }
            (tokend+i)->number = (tokend+i)->number*10 + (int)(*p) - 48;
            (tokend+i)->type = 1;
            No_Operator = true;
            No_Number = false;
        }
        
        if(isOpened<0) { printf("Wrong bracket input\n"); return -1; }
    }
    if(isOpened) { printf("Wrong bracket input\n"); return -1; }
    
    for(token *t = tokend ; t->type ; t++){
        
        // if t is number : Push it to the operands
        if( t->type == 1 ) Push(operands,t->number);
        
        // if t is ( : Push it to the operators
        else if( t->bracket == '(') Push(operators,'(');
        
        // if t is )
        else if( t->bracket == ')')
        {
            // until operators remain or encounter (, pop out operator and calculate
            while(!IsEmptyStack(operators) && Top(operators) != '('){
                if (Top(operators)==')') Pop(operators);
                else Push( operands, calculate(Pop(operands),Pop(operands),Pop(operators)) );
            }
            // remove (
            Pop(operators);
        } 
        
        // if t is operator
        else
        {
            // until operators remain or t lead the Top operators (*,/ > +,-),
            // pop out operator and calculate
            while(!IsEmptyStack(operators) && t->type <= ((Top(operators)=='+' || Top(operators)=='-')?21:22) && Top(operators) != '(')
                Push( operands, calculate(Pop(operands),Pop(operands),Pop(operators)) );
                
            // push operators
            Push(operators,t->operator);
        }
    }
    
    // pop out remain operator and calculate
    while(!IsEmptyStack(operators)) { 
        Push( operands, calculate(Pop(operands),Pop(operands),Pop(operators)) );
    }
    
    printf("Result : %d",Pop(operands));
    free(tokend);
    DestroyStack(operands);
    DestroyStack(operators);
    
    return 0;
}