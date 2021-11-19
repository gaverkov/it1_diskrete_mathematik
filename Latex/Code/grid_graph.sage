G=graphs.Grid2dGraph(7,7)
print(G.vertices())
PLOT=G.plot(figsize=[8,8],vertex_size=500)
PLOT.save("grid_graph.pdf")
