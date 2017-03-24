# Traveling Salesman Problem
author: mihaiberq

levels:

  - medium

type: normal

category: must-know

---
## Content

We will now take a brake from plain algorithms to discuss the *Traveling Salesman Problem*, also known as *TSP*. Mainly a mathematical problem, it is worth mentioning here because of its applicability.

The input to the problem represents a graph depicting a number of *m* cities and the connections between them. The problem describes a salesman who **must** visit *n* cities, and, in the end, return to the starting point. The order in which the cities are visited is not important - yet, finding a solution with the lowest possible distance and cost is. In other words, the problem can be seen as an optimization one.

As stated above, the input is represented by a graph:

[img]

The traveling salesman problem is regarded as being difficult to solve due to the huge search space. The brute-force search, which verifies all the possible routes, is also the most expensive one to pull off. In this case, finding a solution is becoming a permutation problem which requires checking **(n-1)!** permutations[1].

A brute-force algorithm for a graph of 10 cities would have to go through **362,880** possible solutions[2] - which are a lot to take into account if you consider that the problem was first introduced in the 19th century, when no computing device other than the human brain was available.

Another was of finding a solution is using a greedy approach: always take the next cheapest edge. In this case, the time complexity is not as high, because finding the greedy route is a matter of comparing outgoing edges.

However, this is an example where the greedy approach doesn't work properly:

[img2]

With the solutions:
```
greedy: 1+2+1+20=24
best: 1+3+1+4=9
```

Even though there are multiple ways of solving the problem, none that yields the optimal solution in every case has been found. This is the reason why the *Traveling Salesman Problem* is one of the hardest problems[3] to solve.

---
## Practice

TSP can be seen as a/an

???

* optimization problem
* reduction problem
* recursive problem
* greedy problem

---
## Revision

In the TSP, a greedy approach ??? yields the optimal solution.

* sometimes
* never
* always

---
## Footnotes

[1: (n-1)!]
Why are there `(n-1)!` permutations to check and not `n!`?

Because the starting point and finishing point are the same.

[2: Optimization]
The total number can be halved by not counting reversed routes. For example: [A, E, B, C, D, A] and [A, D, C, B, E, A] represent the same cycle.

[3: NP]
`Non-deterministic polynomial-time(NP)` problems are a class of problems that cannot be solved in polynomial-time.

`NP-hard` class, of which TSP is a member of, is regarded as containing problems at least as hard as the problems in NP.
