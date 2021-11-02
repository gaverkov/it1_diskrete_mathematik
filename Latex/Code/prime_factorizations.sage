def smallest_factor_which_is_at_least_two(n):
    """
        der kleinster Faktor einer natuerrlichen Zahl n>=2, der mind. 2 ist.

        Ist die Rueckgabe n, so ist n Primzahl.
    """
    assert(n>=2)
    for i in range(2,n):
        if n % i ==0 : # teilbar durch i?
            return i
    # HINWEIS: diese Funktion laesst sich verschnellern
    # (im Fall einer Eingabe, die eine Primzahl ist)
    # AUFGABE: Ueberlegen Sie sich, wie man die Funktion verschnellern kann
    return n

def prime_factorizations(N):
    """
        Primfaktorzerlegungen aller Zahlen von 1 bis N, fuer N>=1
    """
    assert(N>=1)
    Z={1:[]} # 1 ist Produkt von 0 Primzahlen
    for n in range(2,N+1):
        a=smallest_factor_which_is_at_least_two(n)
        if a==n:
            # n Primzahl
            Z[n]=[n] # n ist Produkt einer Primzahl (die Zahl n selbst)
        else:
            Z[n]=sorted(Z[a] + Z[n/a]) # die Primaftorzerlegung von n setzt sich
            # aus Primfaktorzerlegungen von a und n/a zusammen
    return Z

for n,f in prime_factorizations(25).items():
    print("Alle Faktoren von {}: {}".format(n,f))
