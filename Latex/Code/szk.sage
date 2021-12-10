examples=[]

# example of special digraphs
A=digraphs.Circuit(3)
B=digraphs.Path(2)

D=A.cartesian_product(B).cartesian_product(B)
# we relabel vertices, though that's not strictly necessary
D.relabel({v:i for i,v in enumerate(D.vertices()) })

examples.append(D)

def run_szk_demo(D):    
    components=SZK(D)
    print(components)
    R=rainbow(len(components))
    D.show(vertex_colors=dict(zip(R,components.values())))


def szk_ordering(D,u,seen,ordering):
    """
        Funktion fuer Phase 1 der Berechnung von SZK - Anordnung
    """
    seen[u]=True
    for v in D.neighbors_out(u):
        if not seen[v]:
            szk_ordering(D,v,seen,ordering)
    ordering.append(u)
    
def generate_szk_component(D,u,seen,component):
    """
        Phase 2 der Berechnung von SZK - Bestimmung von Komponenten
    """
    seen[u]=True
    component.append(u)
    for v in D.neighbors_out(u):
        if not seen[v]:
            generate_szk_component(D,v,seen,component)

def SZK(D):
    """
        Berechnung der starken Zusammenhangscomponenten 
        des Digraphen D
    """
    # Phase 1: Berechnung der Anordnung
    seen={u:False for u in D.vertices()}
    ordering=[]
    for u in D.vertices():
        if not seen[u]:
            szk_ordering(D,u,seen,ordering)
    
    # Phase 2: Berechnung der Komponenten
    seen={u:False for u in D.vertices()}
    components={}
    for u in ordering[:-1:]:
        if not seen[u]:
            components[u]=[]
            generate_szk_component(D,u,seen,components[u])
    
    return components 