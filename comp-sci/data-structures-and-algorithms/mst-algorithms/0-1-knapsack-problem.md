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

  - obscura

links:

  - '[A more in-depth explanation of the problem](https://www.quora.com/Whats-an-intuitive-explanation-for-the-0-1-knapsack-problem-in-data-structures-and-algorithms){website}'

parent: prims-iteration

---

# (0-1) Knapsack Problem

---
## Content

**Knapsack(backpack) problem** is a maximization problem in which a set of items, each with a given weight and value, must be stored in a knapsack without exceeding its weight limit.

The *0-1* constraint means *0* or *1* copies of each item may be included.

An actual problem may sound like this: Given a set of *n* items, each with a value *v* and weight *w*, find the combination of items with a summed weight less than or equal to an upper bound *W*, that has the *maximum possible value*.

Consider the following input example:

![inputex](https://img.enkipro.com/185332a414e4719fca72e961ecb7d743.png)

The *knapsack problem* is interesting because, like the Traveling Salesman Problem, there is no known algorithm to *quickly solve it* for all cases.

The *0-1* constraint, however, makes the problem solvable by using a dynamic approach[1] that takes close to *O(nW) time* (where *n* is the number of items and *W* is the max weight).

Values in every cell are calculated using the formula[2]:
```text
m[w][ 0] = 0
if wi + m[w][i-1] > W
  m[w][i] = m[w][i-1]
if wi + m[w][i-1] <= W
  m[w][i] =
      max(m[w][i-1], m[w-wi][i-1] + vi)
```
We are using the matrix to save partial sums (thus splitting the problem into smaller ones) for weights of increment one:
 - If adding the item with index `i` exceeds the weight limit, copy the previous value from the same line.
 - If adding the item with index `i` doesn't exceed the weight limit, pick the maximum between the previous value (this is a check in case the current item's value is negative, hence reducing the maximum possible) and the previous maximum to which we add the current item's value.

For `W = 10` and the input above, the completed matrix looks like this:

![knapmatrix](https://img.enkipro.com/3cc589462d11f6d4a172688a516b6dae.png)

The *y-axis* of the matrix is the maximum allowed weight (*W*) and the *x-axis* is the index of the item in the input array.

For any intermediate weight (including the maximum one), whenever the value in two consecutive cells is not the same, it means that we decided to pick the second item. Thus, the final result will be in the down-right corner: *16* is the maximum value that can be attained.

---
## Practice

If the sum of the previous weight and the current item's weight goes over the maximum allowed weight, then the following statement is true:
```
m[w][i] = ???
```

* `m[w][i-1]`
* `m[w][i]`
* `m[w-1][i]`
* `m[w-1][i-1]`

---
## Revision

0-1 Knapsack problem requires a ??? approach to be solved.


* dynamic
* greedy
* recursive
* complex

---
## Footnotes
[1: Dynamic programming]
The dynamic approach works by breaking a bigger problem into smaller ones, storing their result somewhere (*memoization*), and building a solution chain that would use previous results to solve the current problem.

One such example could be calculating the Fibonacci sequence using an array: initially, you store the first two values, `0` and `1` and then, as you compute a new value based on the previous two, you place it into the array as well.

[2: Variables]
Where `i`, `wi` and `v` are the current item's index, weight and value, `w` is the current partial weight, and `W` is the maximum allowed weight.

