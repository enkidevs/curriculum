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

links:

  - '[Binary Search](http://quiz.geeksforgeeks.org/binary-search/){website}'

parent: approximation-methods

---

# Binary Search

---
## Content

**Binary search** is an efficient algorithm for finding data in **ordered** arrays or lists. Ordering is important because it allows us to split the search space in half after each comparison operation. The principle is simple:
 - Look for the element in the middle of the current data structure
 - If the middle is bigger, repeat step 1 for the elements to the left
 - If the middle is smaller, repeat step 1 for the elements to the right
 - Stop when the element is found or there are no items left to check

Say you have a database containing 200,000 users, sorted by their username. To retrieve the user object with the username `zephyr123`, you could iterate through approximately 200,000 users to find it. Or you could use *binary search*, and end up with around 18 computations.

Linear searching has linear complexity: `O(n)`. However, we don't check every element when using binary search. In the worst-case scenario, the last division of the elements yields a single item to be checked. In other words, we divided the number of items in 2 **m** times:
```text
n / (2*2*...*2) = 1
multiplying the 2's we obtain
n / 2ˆm = 1
multiplying both sides of
 the equation by 2ˆm
n = 2ˆm
```
If we were to apply the logarithmic function for the last equality above, we are left with:
```text
log n = log 2ˆm
which is equivalent to
log n = m * log 2 = m * 1 = m
```
We proved that the maximum number of operations is logarithmic relative to the total number of items. Does it make sense for us to say that the algorithm takes `O(log n)` time?

Yes, it does! If you were to divide 200,000 in half 17 times, you'd end up with an astonishing total of **1.5** items you would still have to compare. In other words:
```text
200,000 / 2 = 100,000
100,000 / 2 = 50,000
...
1.52 / 2 = 0.76
we are confident in saying whether the item
exists or not in the list
```
Consider the following **sorted** (and much shorter) user list, that would contain the whole user object:

![bssorted](https://img.enkipro.com/9ea66b4e1e80d4ea41a0e6e520b22cb4.png)

In this case, iterating through 7 items would return the `zephyr123` user object. However, we can improve the result by using binary search:

![bscomplete](https://img.enkipro.com/7ec73ac762b151f7446cee9def633469.png)

Which results in the searching process ending after 3 steps.

---
## Revision

The Big-O of the binary search algorithm is:

???


* O(log n)
* O(n)
* O(nˆ2)
* O(n*log n)


