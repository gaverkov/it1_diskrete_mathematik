def hanoi_schritte(n,Start,Hilfe,Ziel):
    """
        n Scheiben die auf Start aufgestappelt sind
        von Start nach Ziel mithilfe von Hilfe zu versetzen
    """
    if n==1:
        yield (Start,Ziel)
    else:
        for schritt in hanoi_schritte(n-1,Start=Start,Hilfe=Ziel,Ziel=Hilfe):
            yield schritt
        yield (Start,Ziel)
        for schritt in hanoi_schritte(n-1,Start=Hilfe,Hilfe=Start,Ziel=Ziel):
            yield schritt

def hanoi_movie(n):
    T=[list(range(1,n+1)),[],[]]
    yield T
    for a,b in hanoi_schritte(n,0,1,2):
        T[b].append(T[a].pop())
        yield T

def hanoi_movie_run(n):
    for T in hanoi_movie(n):
        print(T[0])
        print(T[1])
        print(T[2])
        print()
        input('press any key to watch further')
