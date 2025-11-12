# Kapitel 2 : Kombinatorik 

## Worum geht es in Kombinatorik. Wer kümmert sich um die Kombinatorik und warum

Für $$a,b \in \mathbb{Z}$$ ist die Menge $$\lbrace a,\ldots,b\rbrace := \lbrace i \in \mathbb{Z} \colon a \le i \le b\rbrace$$ das ganzzahlige Intervall von $$a$$ bis $$b$$. Das kann auch die leere Menge sein, wenn $$a<b$$ ist. Das Intervall $$\lbrace 1,\ldots,n\rbrace$$, das man oft auch als $$[n]$$ bezeichnet, nutzt man zur Nummerierung von Mengen. Eine Nummerierung von $$A$$ ist eine bijektive Abbildung $$[n] \to A$$ mit $$n \in \mathbb{N}_0$$. Das heißt, jedes Element von $$A$$ bekommt eine eindeutige Nummer aus $$[n]$$ zugewiesen. Die Mengen, die auf diese Weise nummeriert werden können, nennt man endlich. Das $$n$$ ist die Anzahl der Elemente von $$A$$, auch die Größe bzw. Kardinalität von $$A$$ genannt. Die Bezeichnung ist in den meisten Quellen $$|A|$$ oder 
\# $$A$$. Wir nutzen die Bezeichnung $$|A|$$. 

Anwendungen der Kombinatorik: 

- Aufzählen. Wenn man zählen kann, kann man auch algorithmisch aufzählen, und umgekehrt.
- Aufgabe zur Wahrscheinlichkeiten im diskreten Kontext sind oftmals Zählaufgaben.
- Kombinatorik hat einen natürlichen Einfluss auf die kombinatorische Optimierung. 
- Laufzeiten berechnen ist Zählen. Informatik braucht die Kombinatorik.
- Codierungstheorie (Schranken an Codes)
- Kryptographie (Abschätzen des Aufwandes von Attacken)
- Algebra und algebraische Geometrie 

Ein Typisches Muster für kombinatorische Formeln ist wie folgt: man hat ein Funktional, dass einige Mengen $$A,B,\ldots$$ als Input nimmt und daraus eine neue Menge als Output produziert. Beispiele: Vereinigung $$A \cup B$$, kartesisches Produkt $$A \times B$$, die Menge $$B^A$$ aller Abbildungen von $$A$$ nach $$B$$. Die Frage ist: kennt man die Größen der Mengen im Input des Funktionals, kann man irgendwie die Größe der Menge im Output des Funktionals beschreiben? Was sind z.B. die Größen von $$A \cup B$$, $$A \times B$$ und $$B^A$$? Formeln, die Antworten dazu geben, sind universelle Zählprinzipien, die man in sehr unterschiedlichen Kontexten einsetzen kann. Als Aufgaben stellt man zur Kombinatorik sehr gerne Textaufgaben in der Alltagssprache. Die Formulierungen solcher Aufgaben vermeiden somit den technischen Aspekt der Kombinatorik. 

Neben den Kombintorik, welche die Zählprinzipien untersucht und die [abzählende Kombinatorik](https://de.wikipedia.org/wiki/Abz%C3%A4hlende_Kombinatorik) genannt wird, gibt es auch andere Teilbereiche der Kombinatorik, wie z.B. die [Extremalkombinatorik](https://en.wikipedia.org/wiki/Extremal_combinatorics), in der es um Ungleichungen für Größen geht, oder die [algebraische Kombinatorik](https://en.wikipedia.org/wiki/Algebraic_combinatorics), die sich mit dem Zählen im Kontext der Algebra und algebraischer Geometrie beschäftigt. 


## Exkurs zur Existenz von natürlichen Zahlen 

Apropos natürliche Zahlen, die wir zum Zählen nutzen wollen. Gibt es sie wirklich? 

Die Mathematik basiert auf der Mengenlehre. Die Mengenlehre postuliert die Extistenz der leeren Menge durch eines ihrer Axiome. Das ist die einzige Menge, deren Existenz man direkt fordert. Alle anderen Mengen entstehen im Rahmen der Mengenlehre aus den Axiomen im Format: aus jeder Menge $$A$$ lässt sich die folgende weitere Menge nach dem folgenden "Kochrezept" basteln. Eines der interessantesten Axiome der Mengenlehre ist das Unendlichkeitsaxiom, mit dessen Hilfe man natürliche Zahlen konstrukiert, die bekannterweise in jedem mathematischen Bereich unentberlich sind. Insbesondere zählt man in der Kombiantorik Objekte mit Hilfe von natürlichen Zahlen. Die Mengelehre mag sehr kryptisch und technisch erscheinen, ist aber interessant für alle die jenigen, die in die Tiefe gehen wollen und daran interessiert sind, das zu verstehen, was unter der "Oberfläche" liegt. 

Hier eine künstlerische Aufarbeitung des Unendlichkeitsaxioms der 
[Zermelo-Fraenkel-Mengenlehre](https://de.wikipedia.org/wiki/Zermelo-Fraenkel-Mengenlehre), die Ihnen helfen könnte, die ersten Einblicke zu diesem Thema zu sammeln (es ist aber kein  Muss - die Mengenlehre wird bei uns weder in den Aufgabenblättern noch in der Klausur diskutiert). 

### Eine Legende über die Entstehung der natürlichen Zahlen

Am Anfang gab es nichts. Und dieses Nichts war die leere Menge $$\emptyset$$.
Dann nahm man die leere Menge in eine Menge auf, und so entstand die Menge $$\lbrace \emptyset \rbrace$$ mit einem Element.
Als Nächstes nahm man diese Menge samt ihrem Inhalt – dem Nichts – in eine neue Menge auf.
So entstand die Menge $$\lbrace \emptyset, \lbrace \emptyset \rbrace \rbrace$$ mit zwei Elementen: Sie enthielt das Nichts und die Menge, die das Nichts enthält.

Und so ging es immer weiter. Es entstanden immer mehr Mengen, die zwar größer wurden, aber stets endlich blieben.
Man nannte die Anzahl der Elemente in der leeren Menge $$0$$, die Anzahl der Elemente in $$\lbrace \emptyset \rbrace$$ die $$1$$,
die Anzahl der Elemente in $$\lbrace \emptyset,\lbrace \emptyset \rbrace \rbrace $$ die $$2$$ – und so weiter, bis ins Unendliche.

So entstanden die natürlichen Zahlen, auf deren Grundlage nach und nach eine ganze faszinierende und reiche mathematische Welt erschaffen wurde.

Eines Tages erzählte ein etwas zerstreuter Mathematiker (m/w/d) diese Geschichte einem viel beschäftigten Programmierer (m/w/d).
Der Programmierer glaubte dem Mathematiker nicht, denn ein echter Programmierer vertraut einzig und allein lauffähigem Code.
Um ihn zu überzeugen, zeigte der Mathematiker ihm das folgende Programm, das mit nichts anderem als einer leeren Liste beginnt
und diese in einer endlosen Schleife erweitert, um alle natürlichen Zahlen zu erzeugen:

```python
L = []
print(len(L))
while True:
    L.append([L])
    print(len(L))
```

Da sah der Programmierer, dass der Mathematiker tatsächlich recht hatte:
Es bedarf lediglich einer leeren Menge (oder Liste), um alle natürlichen Zahlen zu erschaffen. 

Doch bis heute ist dem Programmierer nicht klar, was die Moral dieser Geschichte ist –
und wie er den Code des Mathematikers je in einem seiner Projekte sinnvoll einsetzen könnte.





