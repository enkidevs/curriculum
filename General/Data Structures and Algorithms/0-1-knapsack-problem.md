# 0-1-knapsack-problem
author: mihaiberq

levels:
 - basic

type: undefined

category: must-know

---
## Content

**Knapsack problem** is the problem in which, for a given set of items, each with a weight and a value, you are asked to maximize the total value of items that you can store in the knapsack, without exceeding its weight limit.

*0-1* refers to a constraint in the solution space: you are not allowed to take more than one copy of each item.

An actual problem may sound like this: Given a set of *n* items, each with a value *v* and weight *w*, find the combination of items with a summed weight less or equal to an upper bound *W*, that has the *maximum possible value*.

The *knapsack problem* is interesting because there is no known algorithm that would *solve it fast* in all cases. 

In case of *0-1* constraint, however, there is a dynamic approach[1] that would take close to *O(nW) time*, where *n* is the number of items and *W* is the max weight.

For a set of items:
```
item   1   2   3   4   5   6   7   
weight 10  15  6   2   1   14  3
value  5   6   8   1   1   20  7
```
Then, we would need to define a matrix as:
```
m[w,0] = 0;
m[w,i] = m[w,i-1], if wi>=w
m[w,i] = max(m[w,i-1],
             m[w-wi]+vi][i-1])
         if wi<=w
```

For `W = 10`, the completed matrix would look like this:
```
    0  1  2  3  4  5  6  7 

0   0  0  0  0  0  0  0  0 
1   0  0  0  0  0  1  1  1 
2   0  0  0  0  1  1  1  1 
3   0  0  0  0  1  2  2  7 
4   0  0  0  0  1  2  2  8 
5   0  0  0  0  1  2  2  8 
6   0  0  0  8  8  8  8  9 
7   0  0  0  8  8  9  9  9 
8   0  0  0  8  9  9  9  9 
9   0  0  0  8  9  10 10 15 
10  0  5  5  8  9  10 10 16 
```
The result will be in the down-right corner: *16* is the maximum value that can be attained .

For some `w` values,the current item's weight, `wi`, might be bigger so you would want to check for, let's say, `m[-7,0]`.

---
## Practice

Which items would be picked in the above example?

???
*3,5,7
*3,4,7
*2,3,5
*1
*2,4,5,7
---
## Revision

*Knapsack problem* requires a ??? approach  to be solved.

*dynamic
*greedy
*recursive
*complex
---
## Footnotes

[1:Dynamic programming]
Dynamic approach is a way of solving problems by breaking them into smaller ones, and building a solution chain that would use previous results for the current task.

Think of Fibonacci sequence calculated linearly, for which you have to *memorize*, or store, the last two values to get a third.