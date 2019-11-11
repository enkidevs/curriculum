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

![bfinit](https://img.enkipro.com/6df4c4d2dc6f6f0fc5bc2b36f44c406e.png)

The process is straight forward: for every iteration, we check all the nodes once, starting from the source:

![bfiter1](https://img.enkipro.com/0cccc4c87e26c9cb830688598d57cdc0.png)

The next node to be visited is *B*. We have already found a shorter path to *E*:

![bfiter2](https://img.enkipro.com/c4a37d629e5c089458f176f228ae6074.png)

Normally, the next one would be **C**. However, it is not reachable, so we have to skip it this iteration. Jumping to *D*:

![bfiter3](https://img.enkipro.com/5f4b6074eb859beaad8326266443a28f.png)

*C* becomes reachable, so we update its distance to *A* in the list. Thus, we will be able to visit it in the next iteration.

We then visit *E*, for which nothing changes:

![bfiter4](https://img.enkipro.com/36ab35a2cc8ca1ec7fc6d852fc0dc076.png)

One iteration done, **three** left to do. The process is the same, so we'll jump straight to the last step of the *4th* iteration. In this case, nothing has changed since the first iteration - and there you also have a first optimization of the algorithm: you can stop the process if there is no difference between the iterations.

![bffinal](https://img.enkipro.com/6f335134e4147e2e90e8043a42b0dbc2.png)

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


