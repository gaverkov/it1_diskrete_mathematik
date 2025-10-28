def teilmengen(X):
    X=set(X)
    if len(X)==0:
        return [set()]
    for a in X:
        break
    result=[]
    X_ohne_a=X.difference(set([a]))

    for Y in teilmengen(X_ohne_a):
            result.append(Y)
            result.append(Y.union(set([a])))

    return result

print(teilmengen([1,2,3]))
