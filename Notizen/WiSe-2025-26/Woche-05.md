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



