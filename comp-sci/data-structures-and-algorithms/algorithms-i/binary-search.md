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

  - '[Binary Search](http://quiz.geeksforgeeks.org/binary-search/){website}'

parent: approximation-methods

---

# Binary search

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

![bssorted](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20600%20100%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2222%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2234.0957031%22%20y%3D%2258%22%3Eatom%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2222%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22102.196777%22%20y%3D%2258%22%3Ecat%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2222%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22215.095703%22%20y%3D%2258%22%3Eedd1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2222%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22161.196777%22%20y%3D%2258%22%3Edog%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2222%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22275.095703%22%20y%3D%2258%22%3Eelsa%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2222%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22345.29248%22%20y%3D%2258%22%3Ehero231%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22455.491211%22%20y%3D%2258%22%3Ezephyr123%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20d%3D%22M30%2020h540v58H30zm61%2057V20m60%2058V20m60%2058V20m60%2059V20m60%2059V20m120%2058V20%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

In this case, iterating through 7 items would return the `zephyr123` user object. However, we can improve the result by using binary search:

![bscomplete](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20600%20190%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20d%3D%22M30%20116h540v58H30zm61%2057v-57m60%2058v-58m60%2058v-58m60%2059v-59m60%2059v-59m120%2058v-58%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2222%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2234.0957031%22%20y%3D%22154%22%3Eatom%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2222%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22102.196777%22%20y%3D%22154%22%3Ecat%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2222%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22215.095703%22%20y%3D%22154%22%3Eedd1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2222%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22161.196777%22%20y%3D%22154%22%3Edog%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2222%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22275.095703%22%20y%3D%22154%22%3Eelsa%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2222%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22345.29248%22%20y%3D%22154%22%3Ehero231%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22455.491211%22%20y%3D%22154%22%3Ezephyr123%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M240%2079v30m-3-10.8l3%2010.8%203-10.8%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2215%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22110.489746%22%20y%3D%2287%22%3Ezephyr123%26gt%3Bedd1%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22128.492676%22%20y%3D%22107%22%3Emove%20right%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M390%20108V48m3%2049.2l-3%2010.8-3-10.8M510%20108V18m3%2079.2l-3%2010.8-3-10.8%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2215%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22235.487549%22%20y%3D%2264%22%3Ezephyr123%26gt%3Bhero231%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22266.992676%22%20y%3D%2284%22%3Emove%20right%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2215%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22337.486084%22%20y%3D%2232%22%3Ezephyr123%3Dzephyr123%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22409.497803%22%20y%3D%2252%22%3Eend%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Which results in the searching process ending after 3 steps.

---
## Revision

The Big-O of the binary search algorithm is:

???


* O(log n)
* O(n)
* O(nˆ2)
* O(n*log n)

 
