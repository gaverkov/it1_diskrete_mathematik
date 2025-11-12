Hier eine künstlerische Aufarbeitung des Unendlichkeitsaxioms der 
[Zermelo-Fraenkel-Mengenlehre](https://de.wikipedia.org/wiki/Zermelo-Fraenkel-Mengenlehre)

## Eine Legende über die Entstehung der natürlichen Zahlen

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



