# Quartiles

author: claremarie

levels:

  - basic

type: normal

inAlgoPool: false

category: fundamental

tags:

  - central-tendency
  - statistics

stub: true





---
## Content

Recall that the median divides a numerical list into halves. One half holds the lower 50% of the values, and the other holds the greater 50% of the values. This can provide useful information about where a specific data point lies relative to the whole. For example, in a data set that is known to have a median of 5.1, a point with a value of 4.3 is in the lower half of the data set.

Computing *quartiles* extends the idea of dividing the data into equal-sized chunks. Here, rather than dividing it into two equal halves, it is divided into four equal quarters.

The division points are referred to as Q1, Q2, and Q3. Q2 is identical to the median: it is the value that divides the lower half of the data from the greater half. Q1 divides the lowest 25% from the remaining 75%, while Q3 divides the lowest 75% from the remaining 25%.

***IMG NEEDED***

Just as computing the median requires different rules for list with even count vs. odd count, computing quartiles requires different rules for different counts on a cycle of 4. With a count of the form `4k + 3` (where *k* is an integer), such 11, the process is the same as finding the median for a list with odd count.

```
# an ordered list of 11 items
[9, 43, 45, 49, 50, 51, 56, 69, 75, 92, 93]
# Q1, Q2 and Q3 are the values in the list
# that divide the remaining items into groups of 2
Q1 = 4.5
Q2 = 5.1
Q3 = 7.5
```

With `4k`, `4k + 1`, or `4k + 2` items in a list, there is no one correct method for computing the value of Q1 and Q3. Refer to the Wikipedia article [Quartiles](https://en.wikipedia.org/wiki/Quartile) for a description of 3 common methods.


---
## Practice

practice question



---
## Revision

revision question
