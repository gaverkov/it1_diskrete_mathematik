
## Woche 4

[Notizen Vorlesun 1](It-1-wise-25-26-04-01.pdf)

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

Kommutativer Ring mit 1 (= unitärer kommutativer Ring).
Kurz gefasst. Menge mit zwei binären Verknüpfungen, die man $$+$$ und $$\cdot$$ nennt, mit den folgenden Regeln.  
Regeln für $$+$$: 
- $$a+0=a$$
- $$a+b=b+a$$
- $$a+(b+c) = (a+b) + c$$
- $$a+(-a) = 0$$

Regeln für $$\cdot$$
- $$a \cdot 1 = a$$
- $$a \cdot b = b \cdot$$
- $$a \cdot (a \cdot b) = (a \cdot b) \cdot c$$

Regeln, die $$+$$ und $$\cdot$$ verbinden
- $$(a+b) \cdot c = a \cdot c + b \cdot c$$
- $$0 \ne 1$$ 

Einen unitären kommutativen Ring nennt man einen Körper, wenn im Ring zu jedem Element $$a$$ ein Element $$b$$ mit $$a \cdot b =1$$ existiert. Dieses Element ist eindeutig und wird als $$a^{-1}$$ bezeichnet. 

Beispiele: 

- $$\mathbb{Z}$$ ist der Ring aus der Schulzeit 
- $$\mathbb{R}$$ und $$\mathbb{Q}$$ sind die beiden Körper aus der Schulzeit
- $$\mathbb{R}$$ erhält man als Vervollständigung von $$\mathbb{Q}$$ bzgl. des Abstands $$|x-y|$$. Vollständigkeit ist für die Analysis (IT-3) wichtig. Beispiel dazu: $$\sum_{i=0}^\infty \frac{1}{i!}$ ist eine Reihe, die aus rationalen Glidern besteht, deren Wert aber nicht zu $$\mathbb{Q}$$ gehört. 
- $$\mathbb{C}$$ als $$\mathbb{R}[x]$$ modulo $$x^2+1$$.
- Körper $$\mathbb{Q}[\sqrt{2}]$$
- $$\mathbb{F}_2$$ -- der Körper der digitalen Welt. XOR und UND. 
- $$\mathbb{F}_{256}$$ als $$\mathbb{F}_2[x]$$ modulo $$x^8+x^4+x^3+x^2+1$$. Der Körper mit den Byte-großen Elementen aus dem QR-Code. Sonst in vielen anderen Anwendungen sehr verbreitet. 

### Algebraisch abgeschlossene Körper 

*Ein Polynom vom Grad mindestens 1 hat immer eine Nullstelle, wenn man den Körper passend vergrößert.*

### Der Körper der komplexen Zahlen und die Eulerformel

- *Exkurs in die Trignometrie mit Sinus, Kosinus und Radianten*
- [Eulerformel](https://de.wikipedia.org/wiki/Eulersche_Formel)
- *Anwendungen der Eulerformel* - Schwingungen und Wellen (Exponentialfunktion ist einfacher als die Trigonometrischen)
- Die Wurzeln aus 1 (aus der Eulerformel), die diskrete Fourier-Transformation und die schnelle Fourier-Transformation (FFT).

Zur Algorithmik: 

- [Karatsuba: The complexity of compuatations](http://www.ccas.ru/personal/karatsuba/divcen.pdf). Ein 23-jähriger Student zeigt, dass die schriftliche Multiplikation, die man der Schule lernt, nicht effizient ist. 
- [Schönhage-Strassen-Algorithmus](https://de.wikipedia.org/wiki/Sch%C3%B6nhage-Strassen-Algorithmus). Mit der schnellen Fourier-Transformation (d.h. mit Hilfe der komplexen Zahlen) kann man einen noch viel schnelleren Algorithmus entwickeln. 


