typedef struct{
    int *stack; // int 자료들을 저장하기 위한 배열
    int max_size; // 최대 사이즈
    int top; // top
} Stack;

Stack *CreateStack(int size)
{
    // Stack 크기의 동적할당 사실상 1 차원 배열
    // main 함수 마지막에 꼭 free(pStack)으로 풀어주자
    Stack *pStack = (Stack *)malloc(sizeof(Stack));
    
    // 예외 지정
    if(pStack == NULL)
        return NULL;
    
    // 원하는 size만큼 stack 인스턴스 배열로 생성
    pStack -> stack = (int *)malloc(size * sizeof(int));

    // 예외 지정
    if(pStack -> stack == NULL){
        free(pStack);
        return NULL;
    }

    // max_size, top 초기화
    pStack -> max_size = size;
    pStack -> top = -1;

    return pStack;
}

void Push(Stack *pStack, int item)
{
    if( pStack->top == pStack->max_size-1 ){
        printf("Stack is Full!\n");
        return;
    }
    
    // stack의 top 위에 item 추가
    pStack -> stack[++pStack->top] = item;
}

int Pop(Stack *pStack)
{
    if( pStack->top == -1 ){
        printf("Stack is Empty!\n");
        return -1;
    }
    // stack의 top을 return 하고 top = top - 1
    return pStack -> stack[pStack->top--];
}

int Top(Stack *pStack)
{
    // 스택이 비어있는지부터 확인
    if( pStack->top == -1 ){
        printf("Stack is Empty!\n");
        return -1;
    }
    // stack의 top을 return
    return pStack -> stack[pStack->top];
}

void DestroyStack(Stack *pStack)
{
    pStack -> top = -1;
    pStack -> stack[0] = '\0';
    free(pStack);
}

bool IsFullStack(Stack *pStack)
{
    if( pStack->top == pStack->max_size-1 ){
        printf("Stack is Full!\n");
        return true;
    }
    else return false;
}

bool IsEmptyStack(Stack *pStack)
{
    if( pStack->top == -1 ){
        printf("Stack is Empty!\n");
        return true;
    }
    else return false;
}

int CountStackItem(Stack *pStack)
{
    printf("Stack list\n");
    printf("==========================\n");
    for(int i=0;i<=pStack->top;i++){
        printf("%d\n",pStack->stack[i]);
    }
    printf("==========================\n");
    printf("total = %d\n",pStack -> top +1);
    return pStack -> top +1;
}

void ClearStack(Stack *pStack)
{
    pStack -> top = -1;
    pStack -> stack[0] = '\0';
}