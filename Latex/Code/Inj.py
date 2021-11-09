def Inj(X,Y):
    """
        Rekursive Aufzaehlung aller injektiven Abbildungen, die dem Beweis
        des Theorems zur Anzahl der injektiven Abbildungen von X nach Y folgt.
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
        Y_ohne_b=Y.difference(set([b]))

        for f in Inj(X_ohne_a,Y_ohne_b):
            f[a]=b
            result.append(f)

    return result
