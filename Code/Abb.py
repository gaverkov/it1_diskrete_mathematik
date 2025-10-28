def Abb(X,Y):
    """
        Rekursive Aufzaehlung aller Abbildungen von X nach Y, die dem Beweis
        des Theorems zur Anzahl der Abbildungen von X nach Y folgt.

        Warnung: das Ziel des Codes ist keine effiziente Aufzaehlung,
        sondern eine interaktive Illustration des Beweises.
        Man kann die Aufzaehlung ohne Rekursion effizienter erledigen.
    """

    X=set(X)
    Y=set(Y)

    if len(X)==0:
        return [{}]

    for a in X:
        break

    result=[]

    for b in Y:

        X_ohne_a=X.difference(set([a]))

        for f in Abb(X_ohne_a,Y):
            f[a]=b
            result.append(f)

    return result
