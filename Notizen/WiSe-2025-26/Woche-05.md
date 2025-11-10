## Asymptotische Notation 

Bei der asymptotischen Notation geht es uns darum, das Verhalten einer Funktion für das wachsende Argument "qualitativ" zu verstehen, ohne dass man die multiplikativen Konstanten beachtet. Wir haben also mit einer Funktion $$f : \mathbb{N} \to \mathbb{R}$$ zu tun, deren Wachstum wir analysieren. Das kann man auch als eine Kategoriesierung von Funktionen in Wachstumsklassen auffassen. Es gibt zum Beispiel linear wachsende Funktion, quadratisch wachstende Funktion, kubisch wachsende Funktionen und auch viele andere Wachstumsklassen, die relevant sind. Unser $$f(n)$$ hängt vom Argument $$n \in \mathbb{N},$$ wobei $$n$$ wächst. Um das zu verdeutlichen sagt man auch manchmal, dass man $$n$$ gegen Unendlich schickt und schreibt dabei $$n \to \infty$$. Das Wachstumtsverhalten einer Funktion $$f(n)$$ hängt nicht davon ab, wie die Funktion an beliebig gewählten endlich vielen Stellen definiert ist. Ändern wir zum Beispiel die Funktion $$f(n)$$ an endlich vielen Stellen, so hat es keinen Einfluss auf ihr Wachstumsverhalten. Unsere Wachstumsanalyse bezieht sich also auf alle genüngend großen $$n$$. In der Informatik wird die asymptotische Analyse für Funktionen mit nichtnegativen Werten angewandt (die Funktionen in der Informatik beschreiben etwa die Laufzeit und den Speicherbedarf - das sind nichnegative Wert). Es hat sich aber historisch so ergeben, dass man die Bezeichnungen, die wir demnächst einführen für Funktionen mit den Werten in $$\mathbb{R}$$ definiert, dabei aber stets mit den Bedingungen arbeitet, die nur von den Beträgen der Werte $$f(n)$$ abhängig sind. Liegt eine Funktion mit nichtnegativen Werten vor, so kann man in den nachfolgenden Definitionen die Beträge weglassen. 

Wir beginnen mit der groß-O Notation. Sei $$g: \mathbb{N} \to \mathbb{R}$$ eine Funktion. Die Wachstumsklasse $$O(g(n))$$ besteht, wenn man es intuitiv beschreibt, aus allen Funktionen $$f : \mathbb{N} \to \mathbb{R}$$, die höchstens so schnell wie die Funktion $$g(n)$$ wachsen. Und das, wie gesagt, bezieht sich stets auf die Beträge (nicht auf die Vorzeichen). Die genaue Definition ist wie folgt:  $$f(n)$$ liegt in der Klasse $$O(g(n))$$, wenn eine Konstante $$C \in \mathbb{R}_{>0}$$ und ein Index $$n_0 \in \mathbb{N}$$ existieren derart, dass $$|f(n)| \le C |g(n)|$$ für alle $$n \ge n_0$$ gilt. Man schreibt diese Bedingung als $$f(n) \in O(g(n))$$ auf. Noch häufiger sieht man es in der Literatur in der Form $$f(n) = O(g(n))$$ -- mit dem Gleichheitszeichen. Das ist zwar so nicht ganz formal korrekt als Schreibweise, aber sehr verbreitet. Man interpretiert hier $$O(g(n))$$ als eine anonyme Funktion mit dem Wachstum höchstens $$g(n)$$. 

Wenn wir etwa $$f(n) = O(n^2)$$ schrieben, so meinen wir dabei, dass $$f(n)$$ höchstens quadratisch wächst. Das kann zum Beispiel beideuten, dass $$|f(n)| \le 4 n^2$$ für alle $$n \ge 50$$ gilt. Die $$4$$ und die $$50$$ sind dann die konkreten Konstante und der konkrete Index, die man fixiert, um nachzuweisen, dass $$f(n)$$ tatsächlich $$O(n^2)$$ ist. Bei einer anderen $$O(n^2)$$ Funktion müssen es nicht die selben Werte sein. 

Die $$O$$-Notation gibt einem die Abschätzungen nach oben an das Wachsum einer Funktion. Genauso kann man untere Abschätzungen betrachten. Das wird durch die $$\Omega$$-Notation festgehalten, welche komplett analog zur $$O$$-Notation eingeführt wird. Das Einzige, was sich ändert, ist die Ungleichungsrelation $$\le$$, die durch $$\ge$$ ausgetauscht wird. Nach der Definition der $$\Omega$$-Notation gehört $$f(n)$$ zur Klasse $$\Omega(g(n))$$, wenn Konsante $c \in \mathbb{R}_{>0}$ und ein Index $$n_0 \in \mathbb{N}$$ existieren derart, dass $$|f(n)| \ge c |g(n)|$$ für alle $n \ge n_0$ erfüllt ist. Schfeibweisen dazu sind $$f(n) \in \Omega(g(n))$$ (formal korrekt) und $$f(n) = \Omega(g(n))$$ (nicht völlig korrekt, aber verbreitet und hoffentlich verständlich). 

Wenn wir zum Beispiel $$f(n) = \Omega(n^2)$$ schreiben, so meinen wir damit, dass das Wachstum von $$f(n)$$ mindestens quadratisch ist. Das kann zum Beispiel bedeuten, dass $$|f(n)| \ge \frac{1}{2} n^2$$ für alle $$n \ge 120$$ gilt. Auch hier: die Konstante $$\frac{1}{2}$$ und den Index $$120$$ wählt man passend. Bei einer anderen $$\Omega(n^2)$$ Funktion können die Konstante und der Index anders sein. 

Kann man die Funktion $$f(n)$$ mit Hilfe von $$g(n)$$ sowohl nach oben als auch nach unten abschätzen, so verwendet man die $$\Theta$$-Notation, um diese Erkenntis festzuhalten. $$f(n)$$ gehört zur Klasse $$\Theta(g(n))$$, wenn $$f(n)$$ sowohl zur Klasse $$O(g(n))$$ als auch zur Klasse $$\Omega(g(n))$$ gehört. Die Bezeichungen dazu sind $$f(n) \in \Theta(g(n))$$ und $$f(n)=\Theta(g(n))$$. Auschreiben kann man die Bedingung als die Existenz von Konstanten $$c,C \in \mathbb{R}_{>0}$$ und einem Index $$n_0 \in \mathbb{N}$$, für welche $$c |g(n)| \le |f(n)| \le C |g(n)|$$ für alle $$n \ge n_0$$ gilt. 

Zum Beispiel gehört eine Funktion $$f(n)$$ mit $$\frac{1}{2} n^2 \le |f(n)| \le 4 n^2$$ für alle $$n_0 \ge 120$$ zur Klasse $$\Theta(n^2)$$. In diesem Beispiel ist $$c = \frac{1}{2}$$, $$C=4$$ und $$n_0=120$$. 
Das bedeutet, das Wachstum von $$f(n)$$ ist mindestens quadratisch und höchstens quadratisch. Das Wachstum ist somit genau quadratisch. 



Beispiel mit der Analyse der Laufzeit eines hypothetischen Codes: 

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


Weitere Bezeichnungen: $$o , \omega, \sim$$

Nicht für jede Größe hat man exakte Formeln. Nicht für jede größe hat man einfache exakte Formeln. In diesen Fällen sind die asymptotischen Formeln hilfreich. 

Beispiele: 
- $$\sum_{i=1}^n i$$
- $$\sum_{i=1}^n i^2$$
- $$\sum_{i=1}^n \frac{1}{i}$$
- $$p_n$$ -- die $n$-te Primzahl

*Asymptotische Äquivalenz* für positivwertige Folgen. 

Beispiele: 
- $$n! \sim \sqrt{2 \pi n} \left( \frac{n}{e} \right)^n $$
- $$p_n \sim n \ln n$$. [Primzahlsatz](https://de.wikipedia.org/wiki/Primzahlsatz)







