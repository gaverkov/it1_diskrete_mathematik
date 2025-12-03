
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

## Bemerkung zum Zählen von Multimengen 

Gerade habe ich in der 
["Einführung in die Kombinatorik" (Seiten 13-16)](https://link.springer.com/book/10.1007/978-3-662-58921-2) von Peter Tittmann eine 
andere Weise gefunden, Multimengen gegebener Größe zu zählen. 
In dieser Weise geht man ebenfalls zu Stars und Bars über, allerdings ohne
den Zwischenschritt mit der Addition der Eins zu den Vielfachheiten. Die Idee ist die $$k$$ Elemente der Multimenge 
durch Stars zu notieren und dazwischen $$n-1$$ Striche zu Setzen, um den Beginn einer neuer Gruppe zu markieren. 
Hat man etwa die Multimenge auf der Grundmengen $$\langle 1,\ldots,n\rangle$$ so ist die erste Gruppe von Stars die Gruppe von Einsen, die zweite die Gruppe von Zweien usw.
Bei der Grundmenge $$\lbrace 1,2,3\rbrace$$ würde man zum Beispiel die Multimenge $$\lbrace 1,1,1,3,3\rbrace_{\ne}$$ als \*\*\*\|\|\*\*
 notieren;
die beiden Striche stehen nebeneinander, weil die zweite Gruppe von Stars leer ist, da unsere Multimenge gar keine Zweien enthält. 
So ensteht als eine Kodierung mit Strings aus Bars und Stars, welche die Länge $$n+k-1$$ haben. 
So ein String ist eindeutig durch die Angabe der Positionen von $$n$$ stars bestimmt. Daher ist die Anzahl
der $$k$$-elementigen Multimengen auf einer $$n$$-elementigen Grundmenge gleich $$\binom{n+k-1}{n}$$. 



## Doppeltes Abzählen 

Wir haben eine algebraische Gleichung durch das doppelte Abzählen nachgeweisen. 
Die linke und rechte Seite der Gleichung erhielten eine kombinatorische Interprätation im Sinne
der zwei Zählenweisen. 

## Schubfachprinzip 

Speichert man $$n$$ Objekte in $$m$$ Schubfächern, so liegen in einem Schubfach mindestens $$n / m$$ Objekten. 
Da die Anzahl der Objekte in jedem Schubfach ganzzahlig ist, lässt sich die Schranke $$n/m$$ aufrunden. 
Bei $$19$$ Objekten und $$3$$ Schubfächern, wissen wir, dass in einem der Schubfächer
mindestens $$\frac{19}{3} = 6 \frac{1}{3}$$ und somit mindetens $$7$$ Objekte liegen. 

Es ist verblüffend, dass dieses einfache Prinzip zu vielen interessanten Resultaten führt, die gar nicht 
einfach aussehen. 

Bei dieser Art der Kombinatorik geht es nicht um Gleichungen, sondern um Ungleichungen. Die Kombinatorik, in der
man es um Ungleichungen geht nennt man die Extremalkombinatorik. Die Extremalkombinatorik hängt mit der
abzählenden Kombinatorik zusammen. 




