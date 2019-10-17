typedef int Element;
typedef struct __NODE__{
    Element data;
    struct __NODE__ *next;
}NODE;

typedef struct {
    int count;
    NODE *front, *rear;
}Queue;

Queue* CreateQueue()
{
    Queue *q = (Queue*)malloc(sizeof(Queue));
    if(q==NULL) return NULL;
    
    q -> count = 0;
    q -> front = q -> rear = NULL;
    
    return q;
}

void Enqueue(Queue *q, Element item)
{
    NODE *N = (NODE*)malloc(sizeof(NODE));
    if(N==NULL) return;
    
    N -> data = item;
    N -> next = NULL;
    
    if(q->count<=0) q -> front = q -> rear = N;
    else
    {
        q -> rear -> next = N;
        q -> rear = N;
    }
    q -> count++;
    printf("item %d is Enqueued at the Rear|| Front : %p, Rear : %p\n",item,q -> front,q -> rear);
}

Element Dequeue(Queue *q)
{
    NODE *N = NULL;
    Element item = 0;
    
    if(q -> count <= 0) { printf("Empty Queue!!\n"); return 0; }
    
    N = q -> front;
    item = N -> data;
    
    if(q -> count == 1) q -> front = q -> rear = NULL;
    else q -> front = N -> next;
    
    free(N);
    q -> count--;
    printf("item %d is Dequeued from Front || Front : %p, Rear : %p\n",item,q -> front,q -> rear);
    return item;
}

bool IsEmptyQueue(Queue *q)
{
    if(q -> count <= 0) printf("Empty Queue!!\n");
    return q -> count <= 0;
}

void DestroyQueue(Queue *q)
{
    NODE *pNow = NULL;
    NODE *pNext = NULL;
    
    for(pNow=q->front ; pNow ; pNow=pNext)
    {
        pNext = pNow->next;
        free(pNow);
    }
    
    q -> count = 0;
    q -> front = q -> rear = NULL;
    
    free(q);
}