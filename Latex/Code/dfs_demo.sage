def dfs_with_stack_iterator(G,s,color,pred):
    S=[s]
    color[s]='grey'
    ind={s:0}
    yield S
    while len(S)>0:
        u=S[-1]
        if ind[u]==G.degree(u):
            S.pop()
            color[u]='black'
            yield S
        else:
            v=G.neighbors(u)[ind[u]]
            ind[u]+=1
            if color[v]=='white':
                ind[v]=0
                color[v]='grey'
                S.append(v)