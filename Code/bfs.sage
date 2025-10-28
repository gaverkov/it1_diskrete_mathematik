class BFS_Queue:
    def __init__(self,maxlength):
        self.contents=[None for i in range(maxlength)]
        self.head=0
        self.tail=0
        
    def length(self):
        return self.tail-self.head
    
    def enqueue(self,x):
        self.contents[self.tail]=x
        self.tail+=1
        
    def dequeue(self):
        self.head+=1
        return self.contents[self.head-1] 

def bfs(G,s):
    color={u: 'white' for u in G.vertices()}
    pred={u: None for u in G.vertices()}
    Q=BFS_Queue(maxlength=len(G.vertices()))        
    Q.enqueue(s)
    color[s]='grey'
    d={s:0}
    while Q.length()>0:
        u=Q.dequeue()
        for v in G.neighbors(u):
            if color[v]=='white':
                color[v]='grey'
                d[v]=d[u]+1
                pred[v]=u
                Q.enqueue(v)
        color[u]='black'
    return d,pred