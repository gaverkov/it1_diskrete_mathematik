from collections import defaultdict 

def adjacencies(G,u):
    if type(G) is Graph: 
        return G.neighbors(u)
    if type(G) is DiGraph:
        return G.neighbors_out(u)
    try:
        iter(G)
    except TypeError:
        print("The object should be a (di)graph or an adjacency list")
    else:
        return G[u]

def dfs(G,u,color=defaultdict(lambda : 'white'),pred={}):
    color[u]='grey'
    for v in adjacencies(G,u):
        if color[v]=='white':
            print("Sondiere {} {}".format(u,v))
            pred[v]=u
            dfs(G,v,color,pred)
    color[u]='black'
    return color,pred
    
def dfs_with_stack(G,s,color=defaultdict(lambda : 'white'),pred={}):
    S=[s]
    color[s]='grey'
    ind={s:0}
    while len(S)>0:
        u=S[-1]
        if ind[u]==len(adjacencies(G,u)):
            S.pop()
            color[u]='black'
        else:
            v=adjacencies(G,u)[ind[u]]
            ind[u]+=1
            if color[v]=='white':
                ind[v]=0
                color[v]='grey'
                pred[v]=u
                S.append(v)
    return color,pred

