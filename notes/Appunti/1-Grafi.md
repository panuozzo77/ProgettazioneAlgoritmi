**Grafo**: G=(V,E), 
V = insieme di nodi, E = insieme di archi.     n = |V|, m = |E|

**Grafo Direzionato** vi è differenza tra una coppia di archi (u,v) e (v,u)
**Definizione: Grado** numero di archi uscenti da un nodo u, indicato con **deg(u)**

- N° archi grafi *non direzionati*: $\sum_{u\in V} deg(u) = 2m$
- N° di coppie distinte di archi: n(n-1)/2
- N° archi grafi *direzionati*: n^2 
**Rappresentazione Grafi**
- Matrice di Adiacenza
- controllare se (u,v) è un arco richiede $\Theta(1)$, identificare gli archi del grafo $\Theta(n^2)$
- Liste di Adiacenza controllare se (u,v) è un arco richiede $O(deg(u))$, identificare gli archi del grafo $\Theta(n+m)$
----
**Percorso:** sequenza P di nodi $v_1...v_k$ dove ogni coppia di nodi $v_i$ e $v_{i+1}$ sono connessi da un arco E
**Percorso Semplice:** tutti i nodi sono distinti
**Connesso:** per ogni coppia di nodi (u,v) esiste un percorso tra u e v
**Ciclo:** percorso con testa e coda coincidenti. Es: $v_s, v_1, v_2...,v_s$
**Ciclo Semplice**: i primi $k-1$ nodi sono tutti distinti

### Albero
Un grafo non direzionato è un albero se:
	- è connesso
	- non contiene cicli

**DIM Teorema**: sia G un grafo non direzionato con n nodi. Ogni 2 delle seguenti affermazioni implica la restante:
	- G è connesso
	- G non contiene cicli
	- G ha n-1 archi

**Albero con Radice**: dato un albero T, si sceglie un nodo radice r e si considerano gli archi di T come orientati a partire da r.
	**genitore di v**: il nodo che w precede v lungo il percorso da r verso v (v è figlio di w)
	 **antenato di v:** con qualsiasi nodo w lungo il percorso da r a v (v è discendente di w)
	 **foglia:** nodo senza discendenti
**DIM:** se G è connesso e non contiene cicli (se G è quindi un albero) allora il numero di archi è n-1
	- Per ogni nodo diverso dalla radice c'è un arco distinto che lo connette al padre $archi \ge n-1$
	- Per ogni arco c'è un nodo distinto (non radice) che è congiunto al padre da quell'arco $archi \le n-1$
	- $\Longrightarrow archi = n-1$
	
----
### Connettività
Equivale a ricercare l'esistenza di un percorso tra s e t
**Problema del percorso più corto:** qual è la lunghezza (numero archi) del percorso più corto tra s e t?

**Breadth First Search (Visita in Ampiezza)**
Esplora il grafo da una sorgente s muovendosi in tutte le posizioni possibili e visitando i nodi per livello (o layer)

$L_0$ = {s}
$L_1$ = tutti i vicini di s
$L_2$ = tutti i nodi che sono uniti da un arco ad almeno un nodo in $L_1$
$L_{i+1} = tutti i nodi uniti da un arco ad almeno un nodo in $L_i$

**DIM Teorema**: per ogni i, $L_i$ consiste di tutti i nodi a distanza i da s. Di conseguenza, esiste un percorso tra s e t $\Longleftrightarrow$ t appare in un livello

```python
BFS(s)
	L0 = {s}
	for (i = 0, i <= n-2, i++)
	Li+1 = empty
	foreach nodo u in Li
		foreach nodo v adiacente ad u
			if (v not in L0,...Li+1)
				Li+1 = Li+1 + {v}
```

BFS con Liste di Adiacenza + Array Discovered
```python
BFS(s)
	Discovered[s] = true
	Discovered[v] = false per ogni v
	L[0] = s
	i = 0
	inizializzo T vuoto
	while(i <= n-2)
		L[i+1] = empty
		foreach u in L[i]
			foreach (u, v) incidente su u
				if Discovered[v] = false
					Discovered[v] = true
					L[i+1] += v
					T = (u,v)
		i++
```
BFS con coda FIFO
```python
BFS(s)
	Inizializza Q con coda vuota
	Inizializza T con un albero vuoto
	Discovered[s] = true
	Discovered[v] = false per ogni v
	Inserisci s in coda a Q, con enqueue e ponilo in u
	foreach (u, v) incidente in u
		if Discovered[v] = false
			Discovered[v] = true
			inserisci v in Q con enqueue
			Aggiungi (u, v) in T
```

**Depth First Search**
La visita DFS parte dalla sorgente s e si spinge in profondità fino a che non è più possibile raggiungere nuovi nodi
	- in v se c'è un arco uscente che porta ad un nodo non esplorato lo segue ed arriva in w
	- in w esegue lo stesso controllo, esplorando tutti i vicini
	- quando li ha esplorati tutti, esegue backtracking
**Proprietà:** produce un albero che ha come radice la sorgente s e come nodi tutti quelli raggiungibili dalla sorgente

**DIM Proprietà 2:** Sia T un albero DFS e siano x e y due nodi di T collegati da (x, y) in G. Si ha che x e y sono uno l'antenato dell'altro in T

**DIM Proprietà 1:** per una data chiamata ricorsiva DFS(u), tutti i nodi che vengono etichettati come "esplorati" tra l'inizio e la fine della chiamata DFS(u), sono discendenti di u nell'albero DFS

DFS con Stack
```python
DFS(u)
	Explored[s] = true
	Explored[v] = false per ogni v
	inizializza uno stack S contenente s
	while (S is not empty)
		metti in u il nodo al top di S
		if(c'è un arco (u, v) incidente su u)
			if(Explored[v] = false) # che non è esaminato
				Explored[v] = true
				inserisci v al top di S
			else
				rimuovi il top di S
```
----
**Componente Connessa:** sottoinsieme di un grafo (insieme di vertici) tali che presa qualsiasi coppia di vertici u e v, esiste sempre un percorso
**Componente Connessa contenente s**: tutti i nodi raggiungibili da s

Come ottenerle: eseguire BFS o DFS sui nodi rimasti inesplorati dopo un'esecuzione

**DIM Teorema:** per ogni due nodi s e t di un grafo, le loro componenti connesse sono uguali o distinte

```python
AllComponents(G)
	Explored[u] = false per ogni u
	foreach u in G
		if Discovered[u] = false
			BFS(u)
```
NOTA: BFS lavorerà senza resettare i campi discovered!

----
#### Visite di Grafi Direzionati
**Raggiungibilità con Direzione:** dato un nodo s, trova tutti i nodi raggiungibili da s
BFS e DFS funzionano correttamente, considereranno solo gli archi uscendi da un certo u

**Connettività Forte:**
	- due nodi sono mutualmente raggiungibili se c'è un percorso da ambe le direzioni
	- un grafo in cui per ogni coppia di nodi questi sono mutualmente raggiungibili, rendendo il grafo fortemente connesso
**DIM Lemma:** sia s un qualsiasi nodo di un grafo direzionato G. G è fortemente connesso se se e solo se ogni nodo è raggiungibile da s ed s è raggiungibile da ogni nodo.
**DIM Algoritmo per la Connettività Forte:** si può determinare se G è fortemente connesso in tempo O(n+m)

#### Ordine Topologico
**Grafi Direzionati Aciclici (DAG):** un DAG è un grafo che non contiene cicli direzionati

**Ordine Topologico**: etichettatura di nodi $v_1, v_2, ..., v_n$ tale che se G contiene l'arco $(v_i, v_j)$, si ha $i<j$ ovvero, i precede j nell'ordinamento
	**DIM Lemma:** se un grafo direzionato G ha un ordinamento topologico, allora G è un DAG
	**DIM Lemma:** se G è un DAG allora G ha un nodo senza archi entranti
	**DIM Lemma:** se G è un DAG, G ha ordinamento topologico

```
TopologicalOrder(G)
	if(esiste nodo v senza archi entranti)
		cancella v da G
		L = TopologicalOrder(G-{v})
		aggiungi v all'inizio di L
		return L
	else
		return empty list
```

**Analisi dell'Algoritmo**
$$T(n)\le \begin{cases} c &n=1\\T(n-1)+c'n &n>1\end{cases}$$
**Metodo Iterativo**
$$
\begin{aligned}T(n)=T(n-1)+c'n\le T(n-2)+c'(n-1)+c'n \le T(n-3)+ c'(n-3)+c'(n-2)+c'n \le...\\ = T(1)+ c'2+...+c'(n-1)+c'n \\ \le c + c'2 + ... +c'(n-1)+c'n \\ = c + c'n(\frac{n-1}{2})-c'= O(n^2)

\end{aligned}$$
**DIM Metodo di Sostituzione**
...

**Topological Order Migliorato**
L'algoritmo trova l'ordinamento topologico di un DAG in O(n+m)
	**Inizializzazione:** 
	- I valori di ogni w in count[w] (n volte) sono aggiornati col numero di archi entranti O(m) + O(n)
	- Inizialmente S contiene tutto G. Poi analizza count[] O(n)
	**Aggiornamento:** per trovare il nodo v da cancellare:
	1. Cancella da S e da G. Da S costa deg(v), se S è una lista O(1)
	2. per ogni arco (v, w) va decrementato il rispettivo count[w]
		se count[w] = 0 va aggiunto ad S
	$$\sum_{u \in V}O(1)+\sum_{u \in V}O(deg(u))=O(n)+O(m)=O(n+m)$$

#### Grafi Bipartito
Un grafo non direzionato è bipartito se l'insieme dei nodi può essere partizionato in 2 sottoinsiemi X ed Y tali che ciascun arco del grafo ha una delle due estremità in X e l'altra in Y

**Testare se è bipartito:** Esistono $2^{n-1}$ possibilità per "colorare i grafi con 2 colori". I modi speculari non contano.

**DIM Lemma**: se un grafo G è bipartito, non può contenere un ciclo dispari

**DIM Osservazione:** Sia G un grafo connesso e siano L0,...Lk i livelli prodotti da un'esecuzione di BFS a partire dal nodo s. Può avvenire o che si verifichi (i) o (ii):
	(i) nessun arco di G collega 2 nodi nello stesso livello
	(ii) un arco di G collega 2 nodi nello stesso livello

Modifica BFS: aggiungi array "color" ed in base al n° del livello (pari o dispari) inserisci un colore o l'altro. Tempo uguale, O(n+m)