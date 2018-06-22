---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know


links:

  - '[Shortcuts for TSP](https://www.wired.com/2013/01/traveling-salesman-problem/){website}'

parent: bellman-ford-iteration

---

# Traveling Salesman Problem

---
## Content

We will now take a break from plain algorithms to discuss the *Traveling Salesman Problem*, also known as *TSP*. Mainly a mathematical problem, it is worth mentioning here because of its applicability.

The problem describes a salesperson who must visit a number of cities and return to the same city they started at, without the salesperson visiting a city more than once.

Defined mathematically, the problem is this: given a graph of *m* nodes representing cities and the connections between them, find an optimal route such that *n* cities can be visited at most once whilst starting and finishing at the same node.

The order in which the cities are visited is not important - yet, finding a solution with the lowest possible distance and cost is. In other words, the problem can be seen as an optimization one.

As stated above, the input is represented by a graph:

![tsp1](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20635%20370%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cellipse%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%2255%22%20cy%3D%2275%22%20rx%3D%2245%22%20ry%3D%2245%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2225.4951172%22%20y%3D%2294%22%3ET1%3C%2Ftspan%3E%3C%2Ftext%3E%3Cellipse%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22215%22%20cy%3D%2275%22%20rx%3D%2245%22%20ry%3D%2245%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22185.495117%22%20y%3D%2294%22%3ET2%3C%2Ftspan%3E%3C%2Ftext%3E%3Cellipse%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22580%22%20cy%3D%2255%22%20rx%3D%2245%22%20ry%3D%2245%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22550.495117%22%20y%3D%2274%22%3ET8%3C%2Ftspan%3E%3C%2Ftext%3E%3Cellipse%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22360%22%20cy%3D%22225%22%20rx%3D%2245%22%20ry%3D%2245%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22330.495117%22%20y%3D%22244%22%3ET5%3C%2Ftspan%3E%3C%2Ftext%3E%3Cellipse%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22185%22%20cy%3D%22200%22%20rx%3D%2245%22%20ry%3D%2245%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22155.495117%22%20y%3D%22219%22%3ET3%3C%2Ftspan%3E%3C%2Ftext%3E%3Cellipse%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%2270%22%20cy%3D%22280%22%20rx%3D%2245%22%20ry%3D%2245%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2240.4951172%22%20y%3D%22299%22%3ET4%3C%2Ftspan%3E%3C%2Ftext%3E%3Cellipse%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22435%22%20cy%3D%22110%22%20rx%3D%2245%22%20ry%3D%2245%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22405.495117%22%20y%3D%22129%22%3ET6%3C%2Ftspan%3E%3C%2Ftext%3E%3Cellipse%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22525%22%20cy%3D%22315%22%20rx%3D%2245%22%20ry%3D%2245%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22495.495117%22%20y%3D%22334%22%3ET7%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M100%2075h70.114193M55%20120l15%20116m19-131l121%2032%20196%207M246%2042l289%2014M260%2076l130%2029M155%20234l-50%2018m125-52l84%2026m81-30l40-41m30-11l26%20142m90-186l-55%20170m-411%2011l365%2035%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22119.497559%22%20y%3D%2269%22%3E10%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22388.497559%22%20y%3D%2242%22%3E15%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22317.498779%22%20y%3D%2284%22%3E8%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22284.497559%22%20y%3D%22327%22%3E11%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22556.497559%22%20y%3D%22202%22%3E20%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22115.498779%22%20y%3D%22237%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2240.4987793%22%20y%3D%22192%22%3E9%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22265.497559%22%20y%3D%22203%22%3E50%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22272.498779%22%20y%3D%22131%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22395.498779%22%20y%3D%22178%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22483.498779%22%20y%3D%22223%22%3E6%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

The traveling salesman problem is regarded as being difficult to solve due to the huge search space. The brute-force search, which verifies all the possible routes, is also the most expensive one to pull off. In this case, finding a solution is becoming a permutation problem which requires checking **(n-1)!** permutations[1].

A brute-force algorithm for a graph of 10 cities would have to go through **362,880** possible solutions[2] - which are a lot to take into account if you consider that the problem was first introduced in the 19th century, when no computing device other than the human brain was available.

Another was of finding a solution is using a greedy approach: always take the next cheapest edge. In this case, the time complexity is not as high, because finding the greedy route is a matter of comparing outgoing edges.

However, this is an example where the greedy approach doesn't work properly:

![tsp2](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20300%20250%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cellipse%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%2256%22%20cy%3D%2256%22%20rx%3D%2235%22%20ry%3D%2235%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2231.4960938%22%20y%3D%2272%22%3ET1%3C%2Ftspan%3E%3C%2Ftext%3E%3Cellipse%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22246%22%20cy%3D%2256%22%20rx%3D%2235%22%20ry%3D%2235%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22221.496094%22%20y%3D%2272%22%3ET2%3C%2Ftspan%3E%3C%2Ftext%3E%3Cellipse%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22245%22%20cy%3D%22194%22%20rx%3D%2235%22%20ry%3D%2235%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22220.496094%22%20y%3D%22210%22%3ET3%3C%2Ftspan%3E%3C%2Ftext%3E%3Cellipse%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%2255%22%20cy%3D%22194%22%20rx%3D%2235%22%20ry%3D%2235%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2230.4960938%22%20y%3D%22210%22%3ET4%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M91%2055h120M55%2092v67m35%2036h119m36-104v69M80%20170l140-90M80%2081l141%2088%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22134.497559%22%20y%3D%2249%22%3E30%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2290.4987793%22%20y%3D%22151%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22195.498779%22%20y%3D%22151%22%3E8%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2238.4987793%22%20y%3D%22132%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22141.498779%22%20y%3D%22220%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22246.498779%22%20y%3D%22132%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

With the solutions:
```
greedy: 1+1+1+30=33
best: 1+5+1+8=15
```

Even though there are multiple ways of solving the problem, none that yields the optimal solution in every case has been found. This is the reason why the *Traveling Salesman Problem* is one of the most computationally expensive problems[3] to solve.

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
 
