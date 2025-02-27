### Definizione
**Obiettivo**: trovare le stime asintotiche più "strette" possibili
- Limite Superiore: $T(N) \text{ è } O(f(n)) se\space \exists c > 0, n_0\ge 0 \space|\space \forall n \ge n_0 \space T(n) \le c \cdot f(n)$
- Limite Inferiore  : $T(N) \text{ è } \Omega(f(n)) se\space \exists c > 0, n_0\ge 0 \space|\space \forall n \ge n_0 \space T(n) \ge c \cdot f(n)$
- Se entrambi sono veri con lo stesso valore asintotico, allora $T(n)=Θ(f(n))$, che indica una crescita esatta.
	- $3n^2+2n \text{ è } O(n^2)$
		$3n^2 +2n \le c \cdot n^2$
		$c\ge \frac{3n^2}{n^2}+\frac{2n}{n^2}$
		scelto arbitrariamente $n_0 = 1$ , $c=3+2=5$ 
	- $3n^2+2n \text{ è } \Omega(n^2)$
		$3n^2 +2n \ge c \cdot n^2$
		è soddisfatta solo se $c \le 3 + \frac{2}{n}$ e $\forall n > 0$
		scegliamo arbitrariamente $n_0 = 0$ , $c=3$
	- $3n^2+2n$ è $\Theta(n^2)$ 

### Tabella delle Complessità Ordinata

| Complessità Temporale | Nome               | Algoritmo/Esempio                                                                                                                | Spiegazione                                                                                                                                                                                       |
| :-------------------- | :----------------- | :------------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **O(1)**              | Tempo Costante     | Nessun algoritmo specifico citato nelle fonti ha tempo costante.                                                                 | Il tempo di esecuzione non dipende dalla dimensione dell'input. Esempio: accesso a un elemento in un array tramite il suo indice.                                                                 |
| **O(log n)**          | Tempo Logaritmico  | **Ricerca Binaria**: Determinare se `x` è presente in un array ordinato `A` di `n` elementi.                                     | A ogni passo, il numero di elementi da cercare si riduce della metà. Il ciclo termina quando l'intervallo `[l, r]` è vuoto. Dopo _k_ iterazioni, `[l, r]` contiene al massimo `⌊n/2^k⌋` elementi. |
|                       |                    | `for (i=n; i ≧ 1; i=⌊i/2⌋)` `print(i)`                                                                                           | Il ciclo termina quando `i` diventa minore di 1. A ogni iterazione, `i` è al massimo la metà del valore precedente, quindi dopo _k_ iterazioni, `i = ⌊n/2^k⌋`. Il ciclo richiede Θ(log n) tempo.  |
| **O(√n)**             | Tempo Radicale     | `<br>j=0; i=0; while(i<=n){ j++; i=i+j; }`                                                                                       | Il ciclo `while` termina quando `i` supera `n`. Dopo _k_ iterazioni, `i` diventa `(1+2+3+...+k) = k(k+1)/2`. Il numero di iterazioni è `O(√n)`.                                                   |
| **O(n)**              | Tempo Lineare      | **Ricerca del Massimo**: Calcolare il massimo tra `n` numeri `a1, …, an`.                                                        | L'algoritmo scorre tutti gli elementi dell'input una volta. Ogni numero, tranne il massimo, partecipa ad almeno un confronto.                                                                     |
|                       |                    | **Merge**: Fusione di due sequenze ordinate `A` e `B` di dimensioni `n` e `m` in un'unica lista ordinata.                        | La fusione di due sequenze ordinate di dimensione `n` e `m` richiede `O(n+m)` tempo. Dopo ogni iterazione del ciclo `while`, la lunghezza dell'output aumenta di 1.                               |
| **O(n log n)**        | Tempo n log n      | **Mergesort** e **Heapsort**: Algoritmi di ordinamento che eseguono `O(n log n)` confronti.                                      | Questi algoritmi utilizzano strategie divide et impera per ordinare gli elementi in modo efficiente.                                                                                              |
|                       |                    | **Intervallo Vuoto più Grande**: Trovare il maggiore intervallo tra timestamp.                                                   | Ordinare i timestamp in ordine non decrescente e scansionare l'elenco ordinato per calcolare la differenza tra timestamp consecutivi. La complessità è `O(n log n + n) = O(n log n)`.             |
| **O(n²)**             | Tempo Quadratico   | **Insertion Sort**: <br>                                                                                                         | Nel caso peggiore, il numero di iterazioni del ciclo `while` è `ti = i+1` per ogni `i`.                                                                                                           |
|                       |                    | **Coppia di Punti più Vicina**: Trovare la coppia di punti più vicina in un insieme di `n` punti nel piano.                      | Calcolare la distanza tra tutte le coppie di punti richiede `O(n²)` tempo.                                                                                                                        |
| **O(n³)**             | Tempo Cubico       | **Insiemi Disgiunti**: Dati `n` insiemi, ciascuno un sottoinsieme di `{1, 2, …, n}`, determinare se esiste una coppia disgiunta. | Per ogni coppia di insiemi, verificare se sono disgiunti richiede `O(n³)` tempo.                                                                                                                  |
| **O(n^k)**            | Tempo Polinomiale  | **Insieme Indipendente di Dimensione k**: Dato un grafo, esistono `k` nodi tali che nessuna coppia è collegata da un arco?       | Enumerare tutti i sottoinsiemi di `k` nodi e verificare se l'insieme `S` è indipendente, con una complessità di `O(n^k)`.                                                                         |
| **O(2^n)**            | Tempo Esponenziale | **Insieme Indipendente Massimo**: Dato un grafo `G`, qual è la dimensione massima di un insieme indipendente di `G`?             | Esaminare tutti i sottoinsiemi dei vertici, con una complessità di `O(n² * 2^n)`. Il numero di sottoinsiemi di un insieme di `n` elementi è `2^n`.                                                |
**Tempo Lineare**
```python
'''
- scandisci tutta la lista
- se trovi un valore superiore al massimo già etichettato, aggiorna il massimo
'''
max = a[1]
for i = 1 to n
	if(a[i]> max)
		max 0 a[i]
```
```python
'''
- genera una nuova stringa alternando i caratteri dalle 2 stringhe in input
- aggiungi la rimanenza della stringa più lunga in coda alla stringa generata precedentemente
'''
def combina_stringhe(a, b, n, m)
i = 1, j = 1
while(i <= n AND j < m)
	if(i<=j)
		output.tail(a[i])
		i++
	else
		output.tail(b[j])
		j++
inserisci elementi rimanenti della lista più lunga
```
**Tempo Quadratico**
```python
'''
- Scandisce la lista dal secondo elemento
- Confronta l'elemento corrente coi precedenti spostandoli a destra finché non trova la posizione giusta
- inserisce l'elemento nella posizione corretta
- Ripete il processo
'''
def insertion_sort(arr):
    for i in range(1, len(arr)):
        key = arr[i]
        j = i - 1
        while j >= 0 and arr[j] > key:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key
```
```python
'''
Esamina tutte le "combinazioni" di coppie di punti, ne calcola la distanza e se necessario aggiorna la distanza minima
'''
min = (x[1] - x[2])^2 + (y[1] - y[2])^2
for i = 1 to n
	for j = i+1 to n
		d = (x[i]-x[j])^2+(y[i]-y[j])^2
		if (d < min)
			min = d
```
**Tempo Cubico**
```python
'''
Ricercare 2 insiemi che se intersezionati danno l'insieme vuoto
- Genero le coppie di insiemi 
- Scandisco gli elementi di un insieme
	- se nessuno di questi è presente nell'altro
		- sono disgiunti
	- non sono disgiunti
'''
for i = 1 to n
	flag = true
	for j = i + 1 to n
		foreach elem in S[i]
			if p in S[j]
				flag = false
				break
		if (flag == true)
			print(S[i] ed S[j] sono disgiunti)
```
**Tempo Logaritmico**
```python
'''
stampa l'elemento alla fine dell'array, poi stampa gli elementi al centro della metà sinistra dell'array, fino a raggiungere la condizione di arresto
'''
for (i = n; i >= 1 ; i = ⌊i/2⌋)
	print(i)
```
Per capire quante iterazioni sono necessarie, va ricercato un valore $k$ per cui il ciclo di ferma.
Ovvero, il ciclo si ferma quando $i < 1, i = i/2 = n /2 \Longrightarrow n/2^k<1\Longrightarrow 2^k<n$ ovvero $k = log_2(n)$
```python
'''
stampa il primo elemento, poi stampa gli elementi con l'indice raddoppiato fino a raggiungere la condizione di arresto
'''
for (i = 1; i<=n ; i=i*2)
	print(i)
```
Analogamente a prima, va individuata la condizione di arresto:
$i > n$ ovvero, $1 * 2^k > n$, ovvero $k = log_2 (n)$

```python
'''
confronta l'elemento al centro con quello da ricercare nell'ARRAY ORDINATO.
se non lo trovi, definisci il nuovo spazio di ricerca:
	 !modificare opportunamente gli indici!
	- se l'elemento al centro è piccolo, andare nella metà destra
	- altrimenti andare nella metà sinistra
'''
binarySearch(A, n, x)
	l = 0
	r = n - 1
	while(l <= r)
		c = (l+r)/2
		if(x = A[c])
			return true
		if (x < A[c])
			r = c - 1
		else
			l = c + 1
	return false
```

**Tempo Radicale**
```python
j = 0
i = 0
while (i <= n)
	j++
	i = i+j
```

| Iterazione | Valore di \( j \) | Valore di \( i \) (somma cumulativa) |
|------------|-----------------|--------------------|
| 1 | 1 | 1 |
| 2 | 2 | 1 + 2 = 3 |
| 3 | 3 | 1 + 2 + 3 = 6 |
| 4 | 4 | 1 + 2 + 3 + 4 = 10 |
| 5 | 5 | 1 + 2 + 3 + 4 + 5 = 15 |
| ... | ... | ... |
| \( k \) | \( k \) | \( 1 + 2 + \dots + k = \frac{k(k+1)}{2} \) |

La condizione di uscita è (i > n), quindi dobbiamo risolvere:

$\frac{k(k+1)}{2} \approx n$

Approssimando ( $k(k+1) \approx k^2$), otteniamo:
$k^2 \approx 2n$
$\approx \sqrt{2n} = O(\sqrt{n})$
Quindi, la complessità temporale di questo algoritmo è **( $O(\sqrt{n})$ )**.

**Tempo $O(n log n)$**
Questi algoritmi utilizzano strategie divide et impera per ordinare gli elementi in modo efficiente. Alternativamente prevedono in input delle liste ordinate e vengono eseguite delle comparazioni per determinare altre soluzioni ottimali

**Tempo $O(n^k)$**
```python
foreach sottoinsieme S di k nodi
	if (S è indipendente)
		print(S)
```
- Numero di sottoinsiemi di $k$ elementi: combinazione binomiale $\binom{n}{k}\le \frac{n^k}{k!}$
- Controllare l'indipendenza: $O(k^2)$
- Totale: $O(k^2n^k/k!)=O(n^k)$

**Tempo Esponenziale $O(2^n)$**
```python
'''
Ricerca del massimo insieme indipendente dato un grafo
'''
```python
S* = empty
foreach sottoinsieme S di nodi
	controlla se S è indipendente
	if (S è il più grande)
		S* = S
```

----
### Confronti dimostrati
- $log n = O(n^x)$
	- caso x > 0: $logn$ è approssimabile ad $n$, quindi $n \le n^x \space \forall n \ge 0\Longrightarrow$ per transitività $log n 0(n^x)$
	- caso x < 0: sappiamo che $log_2 m \le m \forall m \ge 1$. Poniamo $m=n^x, log_2n^x\le n^x \Longrightarrow x log_2 n \le n^X \Longrightarrow log_2 n \le \frac{n^x}{x}$
		Affinché sia soddisfatta, basta usare $c=\frac{1}{x}, n_0=1$
- $(logn)^b = O(n^x)$
	- $(logn)^b = O(n^x)\Longrightarrow log n \le c^{\frac{1}{b}}n^{\frac{x}{b}}$
		Sappiamo che $log n = O(n^y)$, con $y>0$ poniamo $y=\frac{x}{b}$ il nostro $c'=c^{\frac{1}{b}}$ ed $n'_0=n_0$ pertanto è verificata $log n \le c'n^{\frac{x}{b}} \forall n \ge n'_0$
- $(logn^a)^b = O(n^x)$
	- diventa $(a^b)(logn)^b=O(n^x)$
	- sappiamo che per la dimostrazione precedente è vera $(logn)^b = O(n^x)$ inoltre a^b è una costante, quindi non ha effetti sul costo
- $logn\not=\Omega(n^x)$
	- Per definizione: $\exists c>0, n_0\ge0 | logn \ge cn^x \forall n \ge n_0$
	- $logn \ge cn^x \Leftrightarrow c\le \frac{logn}{n^x}$
	- Ma preso un qualsiasi valore c, esiste sempre un valore $n_c | \frac{logn}{n^x}<c \forall n \ge n_c$ 
	- Non è quindi possibile trovare una costante $n_0$ per cui $logn\not=\Omega(n^x)$
### Regolette Notazioni Asintotiche
- moltiplicazione di costanti: $d(n)=O(f(n))\Longrightarrow a d(n)=O(f(n))$
- addizione di funzioni: $d(n)=O(f(n)), e(n)=O(g(n) \Longrightarrow d(n)+e(n)=O(f(n)+g(n))$
- prodotto di funzioni: $d(n)=O(f(n)), e(n)=O(g(n) \Longrightarrow d(n)e(n)=O(f(n)g(n))$
-  transitività: $d(n)=O(f(n)), f(n)=O(g(n) \Longrightarrow d(n)=O(g(n))$ 
- $f(n)=a_dn^d+...+a_1n+a_0 \Longrightarrow f(n)=O(n^d)$ con d esponente massimo
- $n^x=O(a^n). Es: n^{100}=O(2^n)$
#### Bound Asintotici Logaritmi
- $O(log_an)=O(log_bn)$,$\Omega(log_an)=\Omega(log_bn)$,$\Theta(log_an)=\Theta(log_bn)$
	- regole potenze + moltiplicazioni di costanti
- $logn=O(n)$
	- dim per induzione