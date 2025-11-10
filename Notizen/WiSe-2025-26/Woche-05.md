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

Größenordnung: höchstens das, mindetens das, ziemlich genau das, viel geringer als das, viel höher als das, ganz genau das. 
Man versteht die Konstanten, die man eher nicht kennt. 

$$O,\Omega,\Theta, o , \omega, \sim$$

Nicht für jede Größe hat man exakte Formeln. Nicht für jede größe hat man einfache exakte Formeln. In diesen Fällen sind die asymptotischen Formeln hilfreich. 

Beispiele: 
- $$\sum_{i=1}^n i$$
- $$\sum_{i=1}^n i^2$$
- $$\sum_{i=1}^n \frac{1}{i}$$
- $$p_n$$ -- die $n$-te Primzahl

*Asymptotische Äquivalenz* für positivwertige Folgen. 

Beispiele: 
- $$n! \sim \sqrt{2 \pi n} \left( \frac{n}{e} \right)^n $$
- $$p_n \sim n \ln n$$




