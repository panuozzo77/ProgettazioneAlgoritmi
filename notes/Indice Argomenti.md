# Prima Parte
## Analisi Asintotica
- [x] Analisi degli Algoritmi
	- [ ] Tempo Polinomiale
	- [ ] Forza Bruta
	- [ ] Analisi del Caso Pessimo
	- [ ] Analisi del Caso Medio
	- [ ] Definizione di Efficienza e Tempo Polinomiale nel Caso Pessimo
	- [ ] InsertionSort
		- [ ] Ordine di Grandezza
	- [ ] Ordine Asintotico di Grandezza
		- [ ] Limite Superiore
		- [ ] Limite Inferiore
		- [ ] Limite Esatto
		- [ ] Proprietà varie
		- [ ] **DIM 1:** Bound Asintotici comuni
		- [ ] **DIM 2:** Bound Asintotici comuni
	- [ ] Tempo Linerare O(n)
	- [ ] Tempo Quadratico O($n^2$)
	- [ ] Tempo Cubico O($n^3$)
		- [ ] **2 DIM di:** Proprietà dei Logaritmi
		- [ ] Bound Asintotici per Funzioni Logaritmiche
		- [ ] Parte Intera Inferiore
		- [ ] Parte Intera Superiore
			- [ ] 4 Proprietà che ne conseguono
	- [ ] Tempo Logaritmico
		- [ ] **DIM:** algoritmo semplice richiede $\theta(\log n)$
		- [ ] Esempio con BinarySearch
	- [ ] Tempo O($\sqrt n$)
	
		- [ ] Logaritmi a confronto con Polinomi e Radici
		- [ ] Potenze di Logaritmi a confronto con Polinomi e Radici
		- [ ] Potenze di Logaritmi a confronto con Polinomi e Radici
		- [ ] Potenze di Logaritmi a confronto con Polinomi e Radici
	- [ ] Tempo O($n\log n$)
	- [ ] Tempo O($n^k$)
	- [ ] Tempo Esponenziale O($2^n$)
----
## Grafi
- [x] Grafi non Direzionati
- [ ] Grafi Direzionati
- [ ] Numero di archi in un grafo non direzionato
- [ ] Numero di archi in un grafo direzionato
- [x] Rappresentazione dei Grafi
	- [ ] Matrice di Adiacenza
	- [ ] Liste di Adiacenza
- [ ] Def: Percorso
- [ ] Def: Percorso Semplice
- [ ] Def: Connesso
- [ ] Def: Ciclo
- [ ] Def: Ciclo Semplice
- [ ] Def: Albero
- [ ] Teorema degli Alberi
- [ ] Definizioni: albero con radice, genitori di v, antenato di v, foglia
- [ ] **Dim:** se G è connesso e non contiene cicli allora il numero di archi è n-1
- [x] Problema della Connettività
	- [ ] BFS (Visita in Ampiezza)
		- [ ] **DIM:** Esiste un percorso da s e t se e solo se t appare in un livello $L_i$
		- [ ] Proprietà 1
		- [ ] **DIM:** Proprietà 2
		- [ ] BFS con Liste di Adiacenza e Array Discovered
		- [ ] BFS con Coda FIFO
	- [ ] DFS (Visita in Profondità)
		- [ ] **DIM:** Proprietà 1
		- [ ] **DIM:** Proprietà 2
		- [ ] BFS con Stack
----
- [x] Componente Connessa
- [ ] Componente Connessa contenente s
- [ ] **DIM:** Le componenti connesse di s e t o sono uguali o sono distinte
- [ ] Visita di Grafi Direzionati
- [ ] Connettività Forte
- [ ] **DIM:** G fortemente connesso <=> ogni nodo è raggiungibile da ogni nodo
- [ ] **DIM:** Algoritmo per verificare connettività forte
- [ ] DEF: Grafi Direzionati Aciclici (DAG)
- [ ] DEF: Ordine Topologico
- [ ] **DIM:** se un grafo direzionato G ha ordinamento topologico => G è DAG
- [ ] **DIM:** se un grafo direzionato G  è DAG => G ha un nodo senza archi entranti
- [ ] **DIM:** se un grafo direzionato G è DAG => ha ordinamento topologico
- [x] Algoritmo per trovare l'ordinamento topologico
	- [ ] Analisi dell'algoritmo con metodo di sostituzione
	- [ ] Analisi dell'algoritmo con metodo iterativo
	- [ ] Miglioriamo l'algoritmo
	- [ ] Analisi dell'algoritmo migliorato

- [x] DEF: Grafi Bipartito
- [x] Testare se un grafo è bipartito
- [x] **DIM:** 2 Casi possibili eseguendo BFS in un grafo bipartito
- [x] Modifica BFS: colorare/etichettare alternatamente in base ai livelli
----
## Scelta Greedy
- [ ] Definizione Algoritmi Greedy
- [ ] Input ed Output sulla ricerca di cammini minimi
- [ ] Single Source Shortest Path
- [ ] Single Destination Shortest Path
- [ ] Single Pair Shortest Path
- [ ] All Pairs Shortest Path
- [ ] Cicli Negativi

- [ ] **Algoritmo di Dijkstra**
- [ ] Miglioramento con PQueue
- [ ] Correttezza Algoritmo di Dijkstra
- [ ] Algoritmo Completo con PQueue

- [ ] Interval Scheduling (max richieste eseguibili con una risorsa)
	- [ ] Earliest Start Time
	- [ ] **Earliest Finish Time**
	- [ ] Shortest Interval
	- [ ] Fewest Conflicts
- [ ] **DIM:** Ottimalità di Earliest Finish Time

- [ ] Partizionamento di Intervalli (min risorse per svolgere tutte le attività)
	- [ ] Algoritmo
	- [ ] **DIM:** Ottimalità Soluzione Greedy
	- [ ] **DIM:** l'algoritmo usa # risorse = profondità dell'insieme degli intervalli
	- [ ] Implementazione O($n\log n$)
	- [ ] Costi

- [ ] Scheduling per Minimizzare i Ritardi
	- [ ] Shortest Processing Time First (crescenti $t_j$)
	- [ ] Smallest Slack (crescenti $d_j-t_j$)
	- [ ] Earliest Deadline First (crescenti $d_j$)
	- [ ] Inversioni
	- [ ] Algoritmo
	- [ ] **Ottimalità della Soluzione (3 principali, VI dimostrazioni)**
## Alberi Ricoprenti
- [ ] Minimo Albero Ricoprente 
	- [ ] Albero Ricoprente
	- [ ] Forza Bruta: Teorema di Cailey $\exists \space n^{n-2}$ MST
	- [ ] DEF: Taglio
	- [ ] DEF: Insieme di Archi che attraversano il taglio
	- [ ] Proprietà del Taglio
	- [ ] Proprietà del Ciclo (più avanti dimostrazione)
	- [ ] **DIM:** 3 proprietà del taglio

	- [ ] Algoritmo di Prim
	- [ ] Correttezza dell'Algoritmo

	- [ ] Algoritmo di Kruskal
	- [ ] Correttezza dell'Algoritmo (per induzione)
	- [ ] Algoritmo di Kruskal con Union-Find
		- [ ] Union-Find con Array
		- [ ] Union-Find con Array e Union-By-Size
		- [ ] **DIM:** il tempo di esecuzione di una sequenza di Union dipende dal # di aggiornamenti nell'array di S
	- [ ] Kruskal con Struttura a Puntatori
	- [ ] Path Compression per implementare la Find(x)
	- [ ] Costi
	
	- [ ] **DIM:** Proprietà del Ciclo
	- [ ] Correttezza Algoritmo Inverti-Cancella

## Clustering
- [ ] **DIM:** Analisi Clustering
## Data Compression
- [ ] Codifica a lunghezza fissa Pro/Contro
- [ ] Codici prefissi Pro/Contro
- [ ] Optimal Prefix Codes Pro/Contro
- [ ] Rappresentazione Codici Prefissi mediante Alberi Binari
	- [ ] Albero Binario Pieno (codifica efficiente)
	- [ ] **DIM:** Supponendo T binario **non** pieno, il codice prefisso è ottimo
- [ ] Codifica di Huffmann
	- [ ] **DIM:** Osservazione 1
	- [ ] **DIM:** Osservazione 2
	- [ ] **DIM:** Affermazione
	- [ ] Spiegazione + Codice Algoritmo
	- [ ] Complessità
	- [ ] **DIM:** Ottimalità di Huffmann
# Seconda Parte
## Divide et Impera
- [ ] Definizione

- [ ] MergeSort
- [ ] Relazione di Ricorrenza del MergeSort
- [ ] Tempo di Esecuzione
- [ ] **DIM:** è $\theta(n\log n)$

- [ ] Ricerca Binaria Ricorsiva
- [ ] Relazione di Ricorrenza
- [ ] Analisi col metodo di sostituzione

- [ ] QuickSort 
- [ ] Analisi dell'Algoritmo
- [ ] Analisi QuickSort caso Pessimo
- [ ] **DIM:** Analisi QuickSort caso Ottimo

- [ ] QuickSelect
- [ ] Relazione di Ricorrenza per ricerca di elementi di rango r in al variare dell'indice pivot scelto
	- [ ] Caso Pessimo
	- [ ] Caso Ottimo
	- [ ] QuickSelect Randomizzato

- [ ] Sottosequenza di Somma Massima
- [ ] Analisi dell'Algoritmo + Relazione di Ricorrenza
	- [ ] Caso in cui n non è potenza di $\beta$

- [ ] Moltiplicazione Veloce di Interi
- [ ] Relazione di Ricorrenza
- [ ] Moltiplicazione più efficiente + Relazione di Ricorrenza

- [ ] Problema Coppia più Vicina
- [ ] Analisi dei Costi e Relazione di Ricorrenza + Costo
- [ ] Codice dell'Algoritmo

## Programmazione Dinamica
- [ ] Interval Scheduling Pesato
	- [ ] Earliest Finish Time NON funziona
	- [ ] Soluzione basata su Programmazione Dinamica
	- [ ] 1° Algoritmo
		- [ ] **DIM:** Correttezza dell'Algoritmo: Inefficiente
	- [ ] Algoritmo "Memoized"
		- [ ] **DIM:** Richiede O(n)

- [ ] Subset Sums
	- [ ] Approcci fallimentari: Greedy 1, Greedy 2, Programmazione Dinamica
	- [ ] Approccio Corretto
	- [ ] Algoritmo iterativo ed Algoritmo Ricorsivo
	- [ ] **DIM:** Correttezza dell'Algoritmo
	- [ ] **DIM:** Tempo di Esecuzione

- [ ] Minimum Coin Change Problem
	- [ ] Definizione di OPT(i)
	- [ ] Algoritmo

 - [ ] Coin Change Problem
 
 - [ ] Sottosequenza comune più Lunga
	 - [ ] Definizione di OPT(i)
	 - [ ] Algoritmo

- [ ] Cammini Minimi
	- [ ] Presupposti
	- [ ] Definizione di OPT(i)
	- [ ] Algoritmo ShortestPath e Assunzioni
- [ ] Bellman-Ford
	- [ ] Migliorie
	- [ ] Algoritmo ImprovedShortestPath con Array di Appoggio
	- [ ] Algoritmo ImprovedShortestPath2 senza Array di Appoggio
		- [ ] Conseguenze osservazioni precedenti
	- [ ] Algoritmo PushBasedShortestPath + Costi

- [ ] Moltiplicazione di una catena di Matrici
	- [ ] Formulazione: Input ed Output
	- [ ] Supposizioni
	- [ ] Definizione di OPT(i)
	- [ ] Algoritmo

- [ ] Segmented Least Squares \[Minimi Quadrati]
	- [ ] Formulazione del problema
	- [ ] Approccio di Programmazione Dinamica
	- [ ] Definizione di OPT(i)
	- [ ] Algoritmi

- [ ] Sottosequenza Crescente più Lunga
	- [ ] Algoritmo ricorsivo e iterativo

- [ ] Sottosequenza Crescente più lunga per Elementi Contigui
	- [ ] Algoritmo

- [ ] Allineamento di Sequenze
	- [ ] pag 6-9 http://intranet.di.unisa.it/~debonis/PA2023-24/prog_dinamica2024_7.pdf

- [ ] Parentesizzazione
	- [ ] pag 1-3 http://intranet.di.unisa.it/~debonis/PA2023-24/prog_dinamica2024_8.pdf


![[0_notaNotazioniAsintotiche.pdf]]

![[1_Intro.pdf]]

![[2_analisiIparte.pdf]]

![[3_analisiIIparte.pdf]]

![[4_analisiIIIparte.pdf]]

![[5_grafi24_1.pdf]]

![[6_grafi24_2.pdf]]

![[7_grafi24_3.pdf]]

![[8_grafi24_4.pdf]]

![[9_greedy2024_1.pdf]]

![[10_greedy2024_2.pdf]]

![[11_es18_3_2024.pdf]]

![[12_greedy2024_3.pdf]]

![[13_greedy2024_5.pdf]]

![[14_greedy2024_4.pdf]]

![[15_greedy2024_6.pdf]]

![[16_greedy2024_7.pdf]]

![[17_greedy2024_8.pdf]]

![[18_esercitazione1.pdf]]

![[19_divideetimpera2024_1.pdf]]

![[20_divideetimpera2024_2.pdf]]

![[21_divideetimpera2024_3.pdf]]

![[22_prog_dinamica2024_1.pdf]]

![[23_prog_dinamica2024_2.pdf]]

![[24_prog_dinamica2024_3.pdf]]

![[25_prog_dinamica2024_4.pdf]]

![[26_prog_dinamica2024_5.pdf]]

![[27_prog_dinamica2024_6.pdf]]

![[28_prog_dinamica2024_7.pdf]]

![[29_prog_dinamica2024_8.pdf]]

![[30_BT&BB_2024_2.pdf]]

![[31_esame24_6_24.pdf]]

![[32_esame15_7_2024.pdf]]