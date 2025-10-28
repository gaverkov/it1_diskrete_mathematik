load("prim.sage")
G=graphs.Grid2dGraph(7,7)
for u,v in G.edges(labels=False):
    G.set_edge_label(u,v,randint(0,100))
pred=prim(G)
PLOT=G.plot(figsize=[8,8],vertex_size=600,edge_labels=True,edge_color='lightgrey',edge_colors={'blue': pred.items()},edge_thickness=5,vertex_color='lightblue',edge_labels_background='lightgray')
PLOT.save("prim_example.pdf")