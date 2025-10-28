def prim_naive(G):
    """
        inefficient implementation of Prim's algorithm 
        based on a naive version of the priority queues
    """
    link = { v:oo for v in G.vertices() } # oo is +infinity
    s = G.vertices()[0]
    link[s] = 0
    pred = {} 
    undone = set(G.vertices())
    while len(undone)>0:
        u = min(undone,key=link.__getitem__)
        undone.remove(u)
        for v in G.neighbors(u):
            if v in undone and link[v]>G.edge_label(u,v):
                link[v]=G.edge_label(u,v)
                pred[v]=u
    return pred 