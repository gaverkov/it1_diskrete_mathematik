## Woche 2

### Parallelen zwischen Mathematik und Informatik 

|  | Informatik  | Mathematik  |
|-----|--------------------|-----------------------|
| (1) | Code läuft und berechnet das Gewünschte | Aussage verständlich und korrekt |
| (2) | Code läuft, aber berechnet nicht das Gewünschte | Aussage verständlich, aber falsch |
| (3) | Code ist fehlerhaft und läuft gar nicht | Häh? Was meinst du hier? |



"Code läuft und berechnet das Gewünschte" ist eine mathematische Aussage, die  man mit mathematischen Mitteln beweisen kann. Das nennt man die Algorithmenanalysis. 

### Tabellarische Darstellung von Funktionen und booleschen Funktionen

Wenn eine Abbildung auf einer endlichen Menge definiert ist, kann man sie auch tabellarisch festlegen, im Gegensatz z.B. durch die Angabe durch eine Formel. Boolesche Ausdrücke definieren boolesche Funktionen. Man kann die Äquivalenz  von booleschen Ausdrücken nachweisen, indem man die Wahrheitstabellen bestimmt (also, die Tabellen der Funktionen, die durch die boolschen Ausdrücke definiert sind). 

*Bemerkung:* Ausdruck ist nicht das selbe wie die Abbildung. Verschiedene Ausdrücke können die selbe Abbildung definieren. 

### Was ist real unter den Konzepten, die man in Mathematik betrachtet? 

Ungefähr in dieser Form  kam diese Frage von den Teilnehmenden. Antwort: 
Mathematik ist eine Kunstform mit großer Freiheit. Man kann also die Spielregeln festlegen, wie man will und dann im Rahmen der festgelegten Spielregeln nach interessanten Mustern suchen. Mathematische Konzepte müssen daher nicht real sein oder direkt durch die Realität motiviert werden. In angewandter Mathematik orientiert man sich direkt an die Anwendungen aus der realen Welt. In der theoretischen Mathematik muss man es nicht machen, aber es kommt immer  wieder vor, das etwas theoretische nach einer Weile Anwendungen findet und sehr real eingesetzt wird. Beispiel: Zahlentheorie, Primzahlen, endliche Körper, abstrakte Algebra haben Anwendungen in der Codierungtheorie (Kommunikationsprotokolle bei der Datenübertragen) und Kryptographie (Verschlüsselung). Manche Konzepte lassen sich direkt mit der realen Wert verbinden (ganze Zahlen), einige anderen erfordern mehr Hintegrundwissen (auch mehr Wissen darüber, was man in der realen Welt so alles hat). 

### Zu Voraussetzungen beim Beweisen von neuen Aussagen 

In der Vorlesung habe ich durch ein Widerspruchsargument gezeigt, dass man unendlich viele Primzahlen hat, und nutzte dabei, dass jede natürliche Zahl eine Primfaktorzerlegung besitzt. Das habe ich als gegeben angenommen. Die Anmerkung dazu kam aus dem Publikum (das ist sehr gut!). Wenn man ein mathematisches Thema nicht von Null beginnend aufbaut, dann lehnt man sich an etwas an, was bereits bekannt ist. In meinem Fall habe ich angenommen, dass ich der Fundamentalsatz der Arithmetik (Existenz und Eindeutigkeit der Primfaktorzerlegungen) bereits gezeigt worden ist. 



### Vollständige Induktion (WICHTIG)

Prädikat: Aussage mit Eingabe-Variablen. 

Quantoren: Existenz, Allgemeineheit, Nicht-Existenz, eindeutige Existenz. 

Wenn A gilt und aus A B folgt, dann gilt B. 

Das waren zwei Aussagen. 

Wenn A gilt und aus A B folgt und aus B C folgt, dann gelten A,B und C. 

Das waren drei Aussagen. 

Nun unendlich viele Aussagen: 

*Vollständige Induktion:* Wenn P(1) gilt und für alle n in N, aus P(n) P(n+1) folgt, dann gilt P(n) für alle n in N. 

Die Beweise durch Induktion werden in Mathematik und Informatik benutzt. 

### Beispiele zur Induktion 

- Formel für $$\sum_{i=1}^n i$$ (Summe der arithmetischen Reihe im Spezialfall)
- Formel für $$\sum_{i=0}^n q^i$$ bei $q \ne 1$ (Summe der feometrischen Reihe). 

### Induktion und Invarianten von Algorithmen

Sagen wir mal, man hat im Code ein $$i$$, as wächst. Dann kann man an einer Stelle im Code eine sogenannte Invariante für $i$ führen. Das ist eine wahre Aussage, die zu jeder Zeit der Ausführung gilt. Das heißt: $i$ wird immer größer und die Aussage bleibt gelten. Dass die Aussage gilt (eine Invariante ist), wird durch induktive Argumente gezeigt. Ein sehr einfaches Beispiel dazu wäre: die Berechnung das Maximums. Interessanterweise kann man den Code aus den Invarianten heraus entwickeln. Man legt fest, was gelten sollte (die Invarainte), und versucht die Invariante durch Berechnungen (sagen wir mal im Rumpf der Schleife) zu erhalten. 

```python
a = [3,2,5,1,6]
n = len(a)
assert(n>0) #Voraussetzung an die Länge, bei n=0 hätte unser a keine Elemente 
M = a[0] # Invariante (unten) gilt für i=1 (Induktionsanfang) 
for i in range(1,n):
    assert(M == max(a[:i])) # Invariante gilt für i (Induktionsvoraussetzung)
    if a[i]>M:
        M = a[i] 
    assert(M == max(a[:(i+1)])) # Invariante: Schritt von i zu i+1 (damit der Induktionsschritt funktioniert)
print(M)
```

Die asserts im Rumpf der Schleife müssen im echten Code auskommentiert werden (es sind die asserts die auf Richtigkeit testen). 

