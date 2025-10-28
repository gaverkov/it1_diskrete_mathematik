from collections import defaultdict


def dfs_with_stack_iterator(G,s,color=defaultdict(lambda : 'white'),pred={}):
    S=[s]
    color[s]='grey'
    yield color,pred
    ind={s:0}
    while len(S)>0:
        u=S[-1]
        if ind[u]==G.degree(u):
            S.pop()
            color[u]='black'
            yield color,pred
        else:
            v=G.neighbors(u)[ind[u]]
            ind[u]+=1
            if color[v]=='white':
                ind[v]=0
                color[v]='grey'
                pred[v]=u
                yield color,pred
                S.append(v)

def random_dfs_example():
    G=graphs.Grid2dGraph(7,7)
    G.delete_vertices([G.random_vertex() for u in range(12)])
    return G,G.random_vertex()

def dfs_movie(G,s,options={}):
    plots=[]
    for color,pred in dfs_with_stack_iterator(G,s):
        grey_nodes=[v for v in G.vertices() if color[v]=='grey']
        black_nodes=[v for v in G.vertices() if color[v]=='black']
        options['vertex_colors']={'pink': grey_nodes , 'lightblue': black_nodes}
        tree_nodes=[(u,v) for u,v in pred.items()]
        options['edge_colors']={'red' : tree_nodes }
        plots.append(G.plot(**options))
    return plots

                
def dfs_demo(G,s):
    for color,pred in dfs_with_stack_iterator(G,s):
        print(dict(color))
        print(pred)

def generate_and_save_dfs_movie():
    plots=dfs_movie(*random_dfs_example(),options={'figsize':[5,5],'vertex_size':550,'edge_thickness':3,'vertex_color':'white'})
    animate(plots).save("dfs_demo.gif")