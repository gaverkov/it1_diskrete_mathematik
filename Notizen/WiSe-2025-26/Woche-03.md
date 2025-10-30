## Woche 3

### Induktion (Fortsetzung) 

Starke Induktion basiert auf dem Induktionsschritt $$P(1) \wedge \cdots \wedge P(n) \Rightarrow P(n+1)$$.
Bei der starken Induktion nimmt man sich die größere Freiheit den Bezug auf jeden der vorher erledigten Fälle $$1,\ldots,n$$ zu nehmen. 


Weitere Beispiele zur Induktion: 
- Herleitung von Ungleichungen wie $$n \le 2^n$$
- Existenz einer Binärdarstellung für jede natürliche Zahl. Wenn man die Binärdarstellung von $$z$$ behandelt nimmt man den Bezug darauf, dass die Binärdarstellung aller kleineren Zahlen $$1,\ldots,z-1$$ bereits "stehen". Man ermittelt die Binärdarstellung von $$z$$ aus der Binärdarstellung von $$\lfloor z/2 \rfloor$$. 
- Die Formel $$f_n= (\phi^n - \psi^n) / (\phi - \psi)$$ für die Fibonacci-Zahlen. Die rekursive Folge mit $$f_0=0,f_1=1$$ und $$f_{n+2}=f_{n+1}+ f_n$$ hat diese explizite Beschreibung mit Hilfe der beiden Nullstellen $$\phi$$ und $\psi$ des quadratischen Polynoms $$x^2 - x-1$$. Die größere der beiden Nullstellen wird der goldene Schnitt genannt. 
- Existenz von Primfaktorzerlegungen mit der starken Induktion. Wenn Primfaktorzerlegung von $$1,\ldots,z-1$$ bereits stehen, erhält man die Primfaktorzerlegung von $$z$$ durch das Faktorisieren als $$z = a b$$ und die Zerlegung von $$a,b \ge 2$$ im Fall einer zusammengesetzen Zahl $$z$$ und als das Faktorisierung $$z = \prod_{i=1}^1 p_i$$ mit $$p_1 = z$$, wenn $$z \ge 2$$ eine Primzahl ist. Die Induktion beginnt mit der Zahl $$1$$, deren Primfaktorzerlegung die Form $$z= \prod_{i=1}^0 p_i$$ hat.

### Der Wunsch nach grundsätzlichen Lösungen (einer höheren Automatisierung) 

Wenn man für ein paar Wahlen von $$c$$, etwa $$c \in \{1,10,100\}$$ gezeigt hat, dass $$c n \ne \le 2^n$$ für alle genüngend großen $$n \in \mathbb{N}$$ erfüllt ist, will man irgendwann eine grundsätzliche Lösung für alle $c$. 

Etwa: man will zeigen, dass für alle $$c \in \mathbb{R}_{>0}$$ die Ungleichung $$cn \le 2^n$$ für alle genüngend großen $$n \in \mathbb{N}$$ erfüllt ist. Dafür kann man zum Beispiel die folgende Idee nutzen: man nutzt $$n^2$$ zwischen die beiden Seiten der Ungleichung, nutzt die Tatsache dass $$c n \le n^2$$ ganz klar bei $$n \ge c$$ gilt und zeigt dann, dass auch $$n^2 \le 2^n$$ für alle genüngend große $$n$$ erfüllt ist. Man kann dann $$n^2 \le 2^n$$ für alle $$n \ge 4$$ induktiv verifizieren, der Induktionsschritt müsste man aber dabei passend umsetzen. Einfach nur $$(n+1)^2$$ auszumupltiplizieren und dann in $$n^2 + 2 n + 1$$ das $$n^2$ anhand der Induktionssvoraussetzung abschätzen könnte problematisch sein, denn es bleibt der Term $$ 2n$$ stehen, den man auch irgendwie verarbeiten muss. Es scheint also besser zu sein, *multiplikativ* zu agieren. Tatsächlich: linke Seite ist $$n^2$$, also das Produkt von $$n$$ und $$n$$, und die rechte Seite ist $$2^n$$ und somit das Produkt von $$n$$ Zweien. Daher könnte man im Induktionsschritt $$(n+1)^2$$ als $$n^2 \left(1+ \frac{1}{n}\right)^2$$ umschreiben, den Faktor $$n^2$ mit Hilfe der Induktionssvoraussetzung abschätzen, und den anderen Faktor $$\left(1+ \frac{1}{n}\right)^2$$, der bei größer werdenden $$n$$'s immer näher an $$1$$ rankommt einfach durch eine Konstante abschätzen. 

### Was tun, wenn ein Lösungsansatz scheitert? 

Erstmal: das ist ganz normal. Man scheitert beim Lernen immer wieder. Wenn man es nicht tun würde, würde man auch nichts Neues dazu lernen, weil man den Stoff, den man lernt, bereits beherrschen würde. Das steht aber im Widerspruch zur Bedeutung des Worts lernen. Lernen heißt ja genau, dass man etwas, was man vorher nicht konnte, nach einer Wahl kann. 

Wenn ein Ansatz scheitert, lohnt es sich darüber nachzudenken, woran es liegt, dass der Ansatz scheitert. Die Antworten dazu können Indizien enthalten, welche anderen Ansätze funktionieren könnten. 

Es lohnt sich auch über die allgemeine Lage und Prinzipien nachzudenken, das heißt, das vorliegende Problem möglichst untechnisch aber doch nicht zu vaage zu beschreiben. 

### Ist eine endgültige Automatisierung möglich?

Kann man ein universelles Verfahren etnwickeln, das jedes vorhande Problem löset? Etwas, was jede Aufgabe aus der Schule, jedes in der Mathematik oder Informatik vorhandene Problem und jede technische Aufgabe aus dem Bereich der Software-Entwicklung lösen Würde. KI-Systeme sind im Grunde ein Versuch, eine Approximation eines solchen Ich-Kann-Alles-Algorithmus zu erstellen. Tatsächlich kann man mathematisch beweisen, dass derartige ultimative Automatisierung unmöglich ist. Details dazu werden im Modul Theoretische Informatik diskutiert. Die Unmöglichkeit der endgültigen Automatisierung ist eine gute Botschaft für all die, die gerne Knobeln, Rätsel lösen und über abstrakte Dinge nachdenken. 

### Etwas mehr Infos zum Binärsystem und Stellenwertsystemen 

Binärsystem ermöglicht eine Überbrückung zwischen der Logik und dem arithmetischen Rechnen. Transistoren geben einem die Möglichkeit, die Logik (UND, OR, XOR, NOT) umzusetzen. Und auf dieser Logik basierend kann man dann auch PLUS und MAL für ganze Zahlen umsetzen, und in den nächsten Schritten auf anderen größeren Zahlenbereichen. Das dezimale Stellenwertsystem ist für unsere Kultur *die* Wahl. Tatsächlich ist aber eine Wahl von unendlich vielen. Als die Menschen angefangen haben zu zählen, haben sie wohl zuerst einfach nur Striche gesetzt: kein Strich, ein Strich, zwei Striche usw. Das ist das unärsystem. Bein den Stellenwertsystem überlegt man sich eine Referenzzahl (die Basis $$b$$) und schreibt alle vorliegenden Zahlen mit Hilfe der Potenzen der Zahl $$b$$, wobei man als Vorfaktoren dieser Potenzen stehts Wert im Bereich $$\{0,\ldots,b-1\}$$ benutzt. Dieser Werte sind die Ziffern. Damit man Zahlen hinschreiben kann, braucht man für die Ziffern Symbole. 

Stellenwertsystem zur einer anderen Basis als $$10$$ sind genau so funktional wie unser gewöhnliches Dezimalsystem. Das heißt, dass all die Rechenverfahren mit plus, mal, geteilt mit Rest in diesen Systemen genau so gehen. Und, es gibt Kulturen, die tatsächlich eine andere Basis vorziehen. 

### Verschiedene Weisen, eine und die selbe Aussage zu formulieren

Man kann etwa so formiulieren: jede natürliche Zahl ist Summe von endlich vielen verschiedenen Zweierpotenzen, wobei eine Zweierpotenz eine Zahl der Form $$2^i$$ mit $$i \in \mathbb{N}_0$$. 

Das Selbe kann man auch mit mehr Formeln beschreiben: Jedes $$z \in \mathbb{N}$$ lässt sich als 
$$z =\sum_{i \in S} 2^i$$ für eine endliche Menge $$S \subseteq \mathbb{N}_0$$ darstellen. Oder als eine Gleichung der Mengen: 

$$ \mathbb{N} = \lbrace \sum_{i \in S} 2^i \colon S \ \text{endliche Teilmenge von} \ \mathbb{N}_0 \rbrace.
$$

Die Wahl der konkreten Umsetzung ist eine Geschmackssache. Es ist sinnvoll nicht zu lange und nicht zu kryptische Formulierungen zu nutzen, aber was kryptisch erscheint, hängt stark von dem Background ab. Manchmal hat man einen Konflikt zwischen der Länge und Verständlichkeit: lange und verständlichere Formulierungen vs. kurze aber nicht besonders verständliche. 



## Handgeschriebene Notizen: 

- [***Woche 3, Vorlesung 1***](It-1-woche-03-1.pdf)
- [***Woche 3, Vorlesung 2***](It-1-woche-03-2.pdf)






