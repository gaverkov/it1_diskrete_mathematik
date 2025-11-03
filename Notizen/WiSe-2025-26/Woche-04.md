
## Woche 4

### Beweisen durch Fallunterscheidung

...hatten wir bereits im Beweis der Existenz der Primfaktorzerlegung. Hier noch ein Beispiel. 

Welche Beträge können aus 4- und 5-Taler-Münzen zusammengesetzt werden? 

$$\lbrace 4 i + 5 j \colon i,j \in \mathbb{Z}_{\ge 0} \rbrace = \lbrace 0,4,5,8,9,10\rbrace \cup \mathbb{Z}_{\ge 12}$$


## Schnupperstunde in Algebra (KURZ) 

Laut Modulbeschreibung diskutieren wir die komplexen Zahlen schon in IT-1 (in IT-2 brauchen wir aber mehr Algebra) 

- [Ring](https://de.wikipedia.org/wiki/Ring_(Algebra))
- [Körper](https://de.wikipedia.org/wiki/K%C3%B6rper_(Algebra))
- [Quotientenkörper](https://de.wikipedia.org/wiki/Quotientenk%C3%B6rper)
- [Restklassenring](https://de.wikipedia.org/wiki/Restklassenring)
- [Vollständiger Raum](https://de.wikipedia.org/wiki/Vollst%C3%A4ndiger_Raum)
- [I.R. Schafarevich: Basic notions of algebra](https://link.springer.com/book/10.1007/b137643)

Algebra und weitereichende Abstraktion der Konzepte Zahl und Rechenoperationen. 

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

*Exkurs in die Trignometrie mit Sinus, Kosinus und Radianten

*Anwendungen der Eulerformel* - Schwingungen und Wellen (Exponentialfunktion ist einfacher als die Trigonometrischen)

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

*Asymptotische Äquivalenz* für positivwertige Folgen. 

Beispiele: 
- $$n! \sim \sqrt{2 \pi n} \left( \frac{n}{e} \right)^n $$
- $$p_n \sim n \ln n$$








