# Vorlesungsstoff: Skript, handgeschriebene Notizen und Code 

Die annotierten PDF-Dateien aus dem Wintersemester 2021/22 befinden sich im Ordner [***Vorlesungsnotizen***](https://github.com/gaverkov/it1_diskrete_mathematik/tree/main/Vorlesungsnotizen-WiSe-2021-22). <br>
Das neueste Skript sowie die neueste Präsentation sind unter [***Releases - Skript und Präsentation***](https://github.com/gaverkov/it1_diskrete_mathematik/releases/tag/Latest) zu finden. <br>
Hier findet man auch SageMath-Skript, welche die in der Vorlesung präsentierten Algorithmen illustrieren. 

# WiSe 2025/26

## Unsere Ziele

- **Sauber formulieren und argumentieren**
- **Mathematischer Formalismus**
- **Kombinatorik** — diskrete Objekte und Konfigurationen zählen
- **Algorithmen** — aber nicht als Kochbuch von Algorithmen, sondern vor allem die *Analysis* (wieso korrekt? was ist die Laufzeit?)
- **Graphen**. 
- **Algorithmen auf Graphen**
- **Boolesche Algebra** (Kommentar für mich: bool*e*sche Algebra. Datentyp ist bool, ohne e, der Name ist aber George Boole - mit e). 
- Die Rolle der Mathematik in den angewandten Bereichen wird *nebenbei* diskutiert, um die Diskussion etwas aufzulockern. 

*Zur Literatur* 

Weil all diese Themen zu Basics gehören, gibt es richtig viel Literatur zu all den Themen. Je nach Ihren Kapazitäten, Ihrer persönlichen Veranlagung und dem Vorbereitungsgrad kann man Ihnen recht unterschiedliche Literatur empfehlen. Es lohnt sich Literatur zur diskreten Mathematik und Algorithmen zu lesen, die Sie interessant finden. Es lohnt sich auch Literatur zu lesen, die etwas anstregend zu lesen ist. Wenn eine Literaturquelle die beiden Eigenschaften hat (interessant und schwer), ist das eine perfekte Wahl. 

- Zum Formulieren und Beweisen: **Proofs from the book bzw. das Buch der Beweise von Aigner und Ziegler**. Hat viele interessante Beweise und Kommentare. Es ist aber kein Lehrbuch. Das ist ein Buch, um Spaß an Mathe zu haben! 
- Das Lehrbuch **Diskrete Mathematik von Martin Aigner** hat Kombinatorik, Graphen, Algorithmen auf Graphen.
- **Stanley Enumerative Combinatorics, Band 1.** Eigentlich ein Lehrbuch, aber nicht für Anfänger. Das Buch ist ein Hammer. Auch wenn Sie "lediglich" die ersten 80 Seiten schaffen, sind Sie wahrscheinlich ein/e Superheld/in aus einem anderen Universum. 
- **Cormen, Leiserson, Rivest und Stein, Algorithmen -- Eine Einführung.** Ein Klassiker. In zahlreichen Auflagen erschienen (vor allem auf Englisch). Sehr nutzerfruendliches Buch, aber vom Gewicht her schwer (denn es werden viele Themen diskutiert). Anhänge dieses Buchs (zu Mathematik) sind genau so wertvoll wie der Hauptteil. Ich vermute, dass alle Algorithmen, die Sie in diesem Modul und später in Algorithmieren und Programmieren sehen (und noch viel mehr) in diesem Buch enthalten sind. Die Algorithmen werden im Cormen et al. sehr sorgfältig präsentiert und analysiert. 



In der Vorlesung am 13.10. gibt es einen Test mit Bonunspunkten. <br>
Die Vorlesung am 14.10 fällt aus. An der Stelle von Vorlesung lernen Sie selbständig die Inhalte aus den Abschnitten 1 bis 8 des Kapitels 1 im Vorlesungsskript.

Zulassung zur Klausur bei mind. 50% der Punkte für die Aufgabenblätter, die wöchentlich ausgegeben werden. <br>
Mindestens ein Aufgabenblatt wird durch eine Probeklausur ersetzt, deren Punkte auch mitgezählt werden. <br>
+10% Bonus in der Klausur bei mind. 75% Punkte für die Aufgabenblätter <br> 
**NEU:** bei mir keine Hilfsmittel in der Klausur (so können Sie sich besser vorbereiten). <br>
Die Klausur enthält Theorie und Praxis. 


3-Wochen-Zyklus: In der Woche k Ausgabe des Aufgabeblatts k. In der Woche k+1 das Einsammeln der Lösungen des Aufgabeblatts k. In der Woche k+2 die Besprechung der Lösungen der Aufgaben aus dem Aufgabenblatt k. Aufgabenblätter werden in der Übung diskutiert. Im Tutorium kann man beliebige Fragen zum Modul besprechen. In der Vorlesung wird der Stoff diskutiert, der sowohl für die Aufgabenblätter als auch für die Klausur relevant ist. 


## Woche 1: Intro

Sie haben sich für das I im MINT entschieden. Das Studium beginnt. IT-Reihe ist mega interessant und anspruchsvoll. Das I hängt mit M, N und T zusammen. Der Übergang zwischen I und M ist fließend. IT-1 behaldent sowohl M (sauberes Formulieren, Begründen) als auch I (das Entwickelnd, Begründen und Analyse der Korrektheit und Effizienz von Algorithmen auf Graphen). 

Grundvokabeln der Mathemathik sind: Vernkünpfungen der Aussagenlogik, Mengen, Abbildungen und deren Eigenschaften, Inverse Abbildung, Mengen mit deren Relationen und Verknüpfungen (Durscschnitt, Vereinigung, Kartesisches Produkt), Tupel, Relationen, Kardinalität. Eine Kernfähigkeit in Mathematik: exakt formulierte Behauptungen und Fragen verstehen, Begründen, formale Sprache (Bezeichnungen sauber benutzen). 

Zahlenbreiche: natürliche Zahlen, ganze Zahlen, rationale Zahlen, reelle Zahlen, komplexe Zahlen. Sie kennen wohl schon alle aus der Schule, aber die komplexen Zahlen vielleicht noch nicht. 

*Ergebnis vom Test zum Wissensstand* 

Es wurden einersets sehr einfache Themen diskutiert (wie Zinsrechnung) und anspruchsvollere Themen, bei denen man nicht erwahrtet, dass diese in der Schule so richtig behandelt werden (etwa das Programmieren). Ergebnis: Es gibt viele Studierende mit wenig Punkten, etwas weniger Studierende mit etwas mehr Punkten usw. Mit vielen Punkten hat man also ganz wenig Studirende. Das ist unser Stand. Kommentare: 

- Zinsrechnung ist im Wesentlichen die getarnte Mal- und Geteiltrechnung. Etwas um 19% aufwerten heißt, dieses etwas mit 1,19 multiplizieren. Wenn man vom aufgewerteten Wert zum Usprungswert kommen möchte, dann teilt man halt durch 1.19. 19% von etwas nehmen heißt mal 0,19 rechnen. Das ist alles. Nochmals: Zinsrechnung ist ein anderer Wortlaut für mal und geteilt.
- Bei der Aufgaben zum größten und Zweitgrößten Wert sieht man bereits, dass die normale natürliche Sprache nicht ganz dafür geeignet ist, solche Art Konzepte präzise zu beschreiben. Denn wir müssen tatsächlich den zweigrößten Wert etwas genauer definieren. In einer Folge $$a_1,\ldots,a_n$$ aus $n \ge 2$ reellen Werten nennen wir $$a_i$$ und $$a_j$$ mit $$i,j = 1,\ldots,n$$ und $$i \ne j$$ jeweils den größten und zweitgrößten Wert, wenn für alle $$t = 1,\ldots,n$$ Folgendes gilt: $$a_i \ge a_t$$ und, wenn $$a_t < a_i$$, dann ist $a_j \ge a_t$.
- Die Aufgaben zum Zählen von Möglichkeiten sensibilisieren Sie für die nachfolgenden Themen (Kombinatorik).
- Die Aufgabe zu Algebra mit $$x^2 =-1$$ ist die Aufgabe zur Ihrer Fähigkeit, abstrakt zu denken, denn $x$ war in dieser Aufgabe abstrakt. 
- Sonst hatte der Test etliche Aufgabe direkt zum Schulstoff. 

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

## Woche 3

### Induktion (Fortsetzung) 

Starke Induktion basiert auf dem Induktionsschritt $$P(1) \wedge \cdots \wedge P(n) \Rightarrow P(n+1)$$.

Weitere Beispiele zur Induktion: 
- Herleitung von Ungleichungen wie $$n \le 2^n$$
- Existenz einer Binärdarstellung für jede natürliche Zahl.
- Die Formel $$(\phi^n - \psi^n) / (\phi - \psi)$$ für die Fobonacci-Zahlen. 
- Existenz von Primfaktorzerlegungen mit der starken Induktion 

### Beweisen durch Fallunterscheidung

Welche Beträge können aus 4- und 5-Taler-Münzen zusammengesetzt werden? 

$$\lbrace 4 i + 5 j \colon i,j \in \mathbb{Z}_{\ge 0} \rbrace = \lbrace 0,4,5,8,9,10\rbrace \cup \mathbb{Z}_{\ge 12}$$

## Schnupperstunde in Algebra (KURZ)

### Kommutative Ringe mit 1 und Körper

Beispiele: 

- $$\mathbb{Z}$$ ist der Ring aus der Schulzeit 
- $$\mathbb{R}$$ und $$\mathbb{Q}$$ sind die beiden Körper aus der Schulzeit
- Körper $$\mathbb{Q}[\sqrt{2}]$$ 
- $$\mathbb{C}$$ als $$\mathbb{R}[x]$$ modulo $$x^2+1$$.
- $$\mathbb{F}_2$$ -- der Körper der digitalen Welt. XOR und UND. 
- $$\mathbb{F}_{256}$$ als $$\mathbb{F}_2[x]$$ modulo $$x^8+x^4+x^3+x^2+1$$. Der Körper mit den Byte-großen Elementen aus dem QR-Code. Sonst in vielen anderen Anwendungen sehr verbreitet. 

### Algebraisch abgeschlossene Körper 

*Ein Polynom vom Grad mindestens 1 hat immer eine Nullstelle, wenn man den Körper passend vergrößert.*

### Der Körper der komplexen Zahlen und die Eulerformel

*Exkurs in die Trignometrie mit Sinus, Kosinus und Radianten*

## Asymptotische Notation 

Einführendes Beispiel 

```python
I # Initialisierung 
for i in range(n):
    V # Vorspann 
    for j in range(n):
        H # Hauptteil
```
Worauf wollen wir uns fokussieren, wenn wir die Laufzeit optimieren wollen: auf V oder H? Wie ist die Laufzeit Größenordnungmässig? 

Angenommen, wir könnten die Aufgabe, die wir mit dem Code lösen, durch einen anderen Code lösen. 

```python
IA # Initialisierung des anderen Codes 
for i in range(n):
    HA # Hauptteil des anderen Codes 
```

Welcher Code wäre besser von der Laufzeit her? 

*Gültigkeit für alle genüngend großen n*

$$O,\Omega,\Theta$$

Beispiele: 
- $$\sum_{i=1}^n \frac{1}{i}$$
- $$p_n$$ -- die $n$-te Primzahl












