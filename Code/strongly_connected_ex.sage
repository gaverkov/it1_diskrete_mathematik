G=graphs.Grid2dGraph(10,10)
A=[list(v) for v in G.edges(labels=False)]
D=DiGraph()
for a in A:
    shuffle(a)
    D.add_edge(a)
for v in D.vertices():
    D.set_pos(G.get_pos())
C=[c for c in D.strongly_connected_components() if len(c)>1]
R=rainbow(len(C))
shuffle(R)
PLOT=D.plot(figsize=[7,7],vertex_size=550,vertex_color='white',vertex_colors=dict(zip(R,C)))
PLOT.show()
PLOT.save("strongly_connected_comp.pdf")