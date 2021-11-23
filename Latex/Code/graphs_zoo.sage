Zoo=[]

G=graphs.Grid2dGraph(7,7)
G.delete_vertices([(i,2) for i in [0,1,2,3]] + [(i,5) for i in [1,2,3]] )
Zoo.append(G)

G=graphs.Grid2dGraph(5,5)
Zoo.append(G)

for G in Zoo:
    G.show(figsize=[4,4],vertex_size=550,edge_thickness=3)
