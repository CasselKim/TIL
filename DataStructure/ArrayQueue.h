typedef int Element;
typedef struct {
    Element *queue;
    int size;
    int front, rear;
} Queue;

Queue* CreateQueue(int size)
{
    Queue *pQueue = (Queue *)malloc(sizeof(Queue));
    if(pQueue == NULL) return NULL;
    
    pQueue -> queue = (Element*)malloc(sizeof(Element)*size);
    if(pQueue -> queue == NULL){
        free(pQueue);
        return NULL;
    }
    
    pQueue -> size = size;
    pQueue -> front = 0;
    pQueue -> rear = 0;
    
    return pQueue;
}

void Enqueue(Queue *q, Element item)
{
    if( (q -> rear + 1) % q -> size == q -> front ) printf("FULL Queue!!\n");
    else
    {
        printf("%dth item %d is Enqueued || Front : %d, Rear : %d\n",(q -> rear + 1) % q -> size,item,q -> front,q -> rear);
        q -> rear = (q -> rear + 1) % q -> size;
        q -> queue[ q -> rear ] = item;
    }
}

Element Dequeue(Queue *q)
{
    if( q -> front == q -> rear ){ printf("EMPTY Queue!!\n"); return -1; }
    else
    {
        q -> front = (q -> front + 1) % q -> size;
        Element Dequeued = q -> queue[ q -> front ];
        q -> queue[ q -> front ] = -1;
        
        printf("%dth item %d is Dequeued || Front : %d, Rear : %d\n",(q -> front + 1) % q -> size, Dequeued,q -> front,q -> rear);
        
        return Dequeued;
    }
}

bool IsFullQueue(Queue *q)
{
    if((q -> rear + 1) % q -> size == q -> front) printf("FULL Queue!!\n");
    return (q -> rear + 1) % q -> size == q -> front;
}

bool IsEmptyQueue(Queue *q)
{
    if(q -> front == q -> rear) printf("EMPTY Queue!!\n");
    return q -> front == q -> rear;
}

void DestroyQueue(Queue *q)
{
    while( q -> front != q -> rear ){
        q -> queue[ q -> front ] = 0;
        q -> front = (q -> front + 1) % q -> size;
    }
    
    q -> front = 0;
    q -> rear = 0;
    free(q);
}