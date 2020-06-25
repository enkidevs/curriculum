---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

aspects:

  - deep

  - workout

parent: bellman-ford-algorithm

---

# Bellman-Ford Algorithm Iteration

---
## Content

Let's apply the algorithm on the following graph, with *A* as our starting node. As we would normally do for Dijkstra's, we initalized the distance to *A* to be `0` and every other distance to be a very large number (or `inf`):

![bfinit](https://img.enkipro.com/1f144ac123593085cd818fca3f951cf2.png)

The process is straight forward: for every iteration, we check all the nodes once, starting from the source:

![bfiter1](https://img.enkipro.com/b38071326beb2f213407fe1691ee8be3.png)

The next node to be visited is *B*. We have already found a shorter path to *E*:

![bfiter2](https://img.enkipro.com/1628a596cafc16b0276072d21af9627b.png)

Normally, the next one would be **C**. However, it is not reachable, so we have to skip it this iteration. Jumping to *D*:

![bfiter3](https://img.enkipro.com/4e3c79709e232991387e048bcfb107b9.png)

*C* becomes reachable, so we update its distance to *A* in the list. Thus, we will be able to visit it in the next iteration.

We then visit *E*, for which nothing changes:

![bfiter4](https://img.enkipro.com/5708c4771b7c976a970b830bfb4bce3d.png)

One iteration done, **three** left to do. The process is the same, so we'll jump straight to the last step of the *4th* iteration. In this case, nothing has changed since the first iteration - and there you also have a first optimization of the algorithm: you can stop the process if there is no difference between the iterations.

![bffinal](https://img.enkipro.com/b39ba15d408b654521950502fb5a6e49.png)

---
## Practice

Bellman-Ford algorithm uses

??? approach.


* `no specific`
* `greedy`
* `dynamic`
* `binary search`

---
## Revision

In the worst case, the Bellman-Ford algorithm requires

???


* `|V-1| iterations`
* `|V| iterations`
* `|V+1| iterations`


