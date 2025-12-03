
## Kombinatorik <-> Algebra Übersetzung 

Wir haben die Übersetzung der Probleme, etwa (Kombinatorik-Algebra-Übersetzung) diskutiert. 

Konkrete Beispiele dazu waren: 
- Inklusion-Exklusion kann in die Algebra übersetzt werden (charakteristische Funktionen).
- Umgekehrt können Formeln (binomischer Lehrsatz und andere Formeln mit Binomialkoeffizienten) in die Kombinatorik übersetzt werden.

## Multimengen fester Größe durch Stars-and-Bars-Codierung zählen

Zusammenfassung der Idee: 
Man übesetzt die Multimengen als Tupeln mit Vielfachheiten, addiert je eins zu den Vielfachheiten um positive Werte zu erzeugen
und kodiert die enstehenden Tupeln mit Stars und Bars 
(Sternchen und Striche). Das Zählen reduziert sich zur Wahl von Lücken, die man mit Strichen ausfüllt. 

```python
def stars(x):
    return ' '.join(x*['*'])
    
def stars_and_bars(t):
    return '|'.join([stars(x) for x in t])
    
print(stars_and_bars([1,2,4]))
print(stars_and_bars([2,3,2]))
```

Ergebnis: 

```bash
*|* *|* * * *
* *|* * *|* *
```

## Doppeltes Abzählen 

Wir haben eine algebraische Gleichung durch das doppelte Abzählen nachgeweisen. 
Die linke und rechte Seite der Gleichung erhielten eine kombinatorische Interprätation im Sinne
der zwei Zählenweisen. 

## Schubfachprinzip 

Speichert man $$n$$ Objekte in $$m$$ Schubfächern, so liegen in einem Schubfach mindestens $$n / m$$ Objekten. 
Da die Anzahl der Objekte ganzzahlig ist, lässt sich die Schranke $$n/m$$ aufrunden. 
Bei $$19$$ Objekten und $$3$$ Schubfächern, wissen wir, dass in einem der Schubfächer
mindestens $$19/3 = 6 1/3$$ und somit mindetens $$7$$ Objekte liegen. 

Es ist verblüffend, dass dieses einfache Prinzip zu vielen interessanten Resultaten führt, die gar nicht 
einfach aussehen. 

Bei dieser Art der Kombinatorik geht es nicht um Gleichungen, sondern um Ungleichungen. Die Kombinatorik, in der
man es um Ungleichungen geht nennt man die Extremalkombinatorik. Die Extremalkombinatorik hängt mit der
abzählenden Kombinatorik zusammen. 

