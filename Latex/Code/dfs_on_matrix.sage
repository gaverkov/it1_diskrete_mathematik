M=random_matrix(ZZ,50,50)
M=M.apply_map(lambda x : x % 2)
matrix_plot(M).show()

def adjacency_factory(M):
    def adj(e):
        i,j=e
        return [(s,t) for s,t in [(i-1,j),(i+1,j),(i,j-1),(i,j+1)] if 0<=s and s<M.nrows() and 0<=t and t<M.ncols() and M[s,t]==M[i,j]]
    return adj


adj=adjacency_factory(M)

def dfs(adj,u,found):
    found.append(u)
    for v in adj(u):
        if v not in found:
            dfs(adj,v,found)

found=[]
dfs(adj,(22,22),found)

for v in found:
    M[v]=2

matrix_plot(M).show()
