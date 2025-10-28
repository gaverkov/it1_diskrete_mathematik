G=graphs.Grid2dGraph(100,100)
for u,v in G.edges(labels=False):
    G.set_edge_label(u,v,randint(0,10000))
print("Prim mit der Heap-Prioritaetsschlange")
%time pred=prim(G)
print("Prim mit der naiven Prioritaetsschlange")
%time pred=prim_naive(G)