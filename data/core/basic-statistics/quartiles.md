# Quartiles
author: claremarie

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

Recall that the median divides a numerical list into halves. One half holds the lower 50% of the values, and the other holds the greater 50% of the values. This can provide useful information about where a specific data point lies relative to the whole. For example, in a data set that is known to have a median of 51, a point with a value of 43 is in the lower half of the data set.

Computing *quartiles* extends the idea of dividing the data into equal-sized chunks. Here, rather than dividing it into two equal halves, it is divided into four equal quarters.

The division points are referred to as Q1, Q2, and Q3. Q2 is identical to the median: it is the value that divides the lower half of the data from the greater half. Q1 divides the lowest 25% from the remaining 75%, while Q3 divides the lowest 75% from the remaining 25%.

***IMG NEEDED***

Just as computing the median requires different rules for lists with even count vs. odd count, computing quartiles requires different rules for different counts on a cycle of 4. There is no one correct method for computing the exact value of Q1 and Q3. Refer to the Wikipedia article [Quartiles](https://en.wikipedia.org/wiki/Quartile) for a description of 3 common methods.

In most cases, the datasets you will be working with will be large enough that the differences resulting from these methods will not be significant.


---
## Practice

In terms of quartiles, items with values above the 25% percentile and below the 75% percentile of a data set would fall:

* between Q1 and Q2
* between Q1 and Q3
* above Q2

---
## Revision

Given the ordered list

`[14, 16, 19, 21, 27, 31, 35, 39]`

the item with value `31` is
???

* between Q1 and Q2
* between Q2 and Q3
* greater than Q3
