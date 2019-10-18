typedef char Element;
typedef struct __NODE__{
    Element data[40];
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

void Enqueue(Queue *q, Element *item)
{
    NODE *N = (NODE*)malloc(sizeof(NODE));
    
    if(N==NULL) return;
    
    strcpy(N -> data,item);
    N -> next = NULL;
    
    if(q->count<=0) q -> front = q -> rear = N;
    else
    {
        q -> rear -> next = N;
        q -> rear = N;
    }
    q -> count++;
    //printf("item %s is Enqueued at the Rear|| Front : %p, Rear : %p\n",item,q -> front,q -> rear);
}

Element* Dequeue(Queue *q)
{
    NODE *N = NULL;
    Element *item;
    
    if(q -> count <= 0) { printf("Empty Queue!!\n"); return 0; }
    
    N = q -> front;
    item = N -> data;
    
    if(q -> count == 1) q -> front = q -> rear = NULL;
    else q -> front = N -> next;
    
    free(N);
    q -> count--;
    //printf("item %s is Dequeued from Front || Front : %p, Rear : %p\n",item,q -> front,q -> rear);
    return item;
}

bool IsEmptyQueue(Queue *q)
{
    if(q -> count <= 0) printf("Empty Queue!!\n");
    return q -> count <= 0;
}

void QueueState(Queue *q)
{
    NODE *pNow = NULL;
    NODE *pNext = NULL;
    
    printf("The current status of Queue : (");
    for(pNow=q->front ; pNow ; pNow=pNext)
    {
        pNext = pNow->next;
        printf("%s",pNow -> data);
        if (pNext!=NULL) printf(", ");
    }
    printf(")\n\n");
}

void *PopQueue(Queue *q, Element *item)
{
    if(q -> count <= 0) { printf("No items on the Queue!!\n"); return 0; }
    if(!strcmp(item," ")) { printf("No items received!!\n"); return 0; }
    NODE *pNow = NULL;
    NODE *pNext = NULL;
    
    if(!strcmp(item,q -> front->data))
    {
        pNow = q -> front;
        q -> front = q -> front -> next;
        q -> count--;
        free(pNow);
        return 0;
        
    }
    
    for(pNow = q -> front ; pNow ; pNow = pNext)
    {
        pNext = pNow -> next;
        if (pNext==NULL) break;
        if(!strcmp(item,pNext -> data)){
            pNow -> next = pNext -> next;
            if(pNow -> next == NULL) q -> rear = pNow;
            free(pNext);
            q -> count--;
            return 0;
        }
    }
    
    printf("%s is not in the Queue!\n",item);
    return 0;
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
