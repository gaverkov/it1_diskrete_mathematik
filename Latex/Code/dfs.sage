def dfs_init(G):
    color=['white' for u in G.vertices()]
    pred=[None for u in G.vertices()]
    return color,pred 

def dfs(G,s,color,pred):
    color[s]='grey'
    for v in G.neighbors():
        if color[v]=='white':
            pred[v]=u
            dfs(G,v,color,pred)
    color[s]='black'
    
def dfs_with_stack(G,s,color,pred):
    S=[s]
    color[s]='grey'
    ind={s:0}
    while len(S)>0:
        u=S[-1]
        if ind[u]==G.degree(u):
            S.pop()
            color[u]='black'
        else:
            v=G.neighbors(u)[ind[u]]
            ind[u]+=1
            if color[v]=='white':
                ind[v]=0
                color[v]='grey'
                S.append(v)

