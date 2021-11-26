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
    
    def __repr__(self):
        return "removed from queue: "+repr(self.contents[0:self.head])+" in queue: "+repr(self.contents[self.head:self.tail])
        

def bfs_iterator(G,s):
    """
        Iterator that yields the state of the search 
        each time all neighbors of a node have been scanned
        The state consists of distance, predecessors, queue and the colors
    """
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
        yield d,pred,Q,color
    return d,pred

def bfs_movie(G,s,options={}):
    plots=[]
    for d,pred,Q,color in bfs_iterator(G,s):
        grey_nodes=[v for v in G.vertices() if color[v]=='grey']
        black_nodes=[v for v in G.vertices() if color[v]=='black']
        options['vertex_colors']={'red': grey_nodes , 'blue': black_nodes}
        tree_nodes=[(u,pred[u]) for u in G.vertices() if pred[u]!=None]
        options['edge_colors']={'red' : tree_nodes }
        plots.append(G.plot(**options))
    return plots

def bfs_demo_1():
    """
        a randomly generated demo for bfs search
        a sequence of plots is returned
        Use: animate(plots).save("FILE.gif") to store the demo in a gif (mpeg is also possible)
    """
    G=graphs.Grid2dGraph(20,20)
    G.delete_vertices([G.random_vertex() for u in range(100)])
    options={'figsize':[10,10],'vertex_size':550,'edge_thickness':3,'vertex_color':'white'}
    plots=bfs_movie(G,G.random_vertex(),soptions)
    return plots
                    