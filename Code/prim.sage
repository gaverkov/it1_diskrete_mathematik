from heapq import *

def prim(G):
    s=G.vertices()[0]  # root 
    Q=[(oo,v) for v in G.vertices()[1:]] # our heap, where oo==+infinity
    heappush(Q,(0,s)) 
    done=set() 
    link={ v:oo for v in G.vertices() } 
    pred={}
    while len(Q)>0:
        _,u=heappop(Q)
        if u not in done:
            done.add(u)
            for v in G.neighbors(u):
                if v not in done and link[v]>G.edge_label(u,v):
                    link[v]=G.edge_label(u,v)
                    pred[v]=u
                    heappush(Q,(link[v],v))
    return pred