---
author: nemanjaenki
category: tip
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Array Interview Tips

---
## Content

Here're some useful techniques when using arrays to solve coding interview problems.

---

#### Traversing from the right

Sometimes it's more suitable to go through the array from the end instead of the start.

![traversing-from-the-right](https://img.enkipro.com/8a4ff0dfd4d47d8a792a72df3afc44fd.gif)

---

#### Sorting the array

Sorting the array first may simplify the problem. 

Note that this makes your program at least an O(NlogN)[1]. If you're creating a new sorted array, you're also adding O(N) space complexity to hold that array.

> 💡 Always consider preprocessing your data to create an ideal starting point for an efficient solution.

---

#### Traversing the array more than once

Traversing the array multiple times doesn't affect complexity unless the number of traversals depends on input size N. [2]

![traverse-more-than-once](https://img.enkipro.com/22e925bbf1ad225d20c1e05302e44bdb.gif)

---
## Practice

What's the Big-O for traversing an input array 1337 times, irrespective of the size of the input data?

???

- O(N)
- O(N²)
- O(logN)
- O(N + N)

---
## Revision

What's the space complexity for a program that takes in an array of length N, combines all of its elements into another array of length N, and returns the new array?

???

- O(N)
- O(N²)
- O(logN)
- O(N + N)

---
## Footnotes

[1: Sorting is logarithmic]
The best sorting algorithms, like QuickSort or MergeSort, have O(NlogN) complexity.

[2: Traverse more than once is O(N)]

```js
// this program is still O(N)
// because no matter how big the input is
// we're always doing 2 loops
// => # of loops doesn't depend on input.length
function program(input) {

  // loop 1
  for (item in input) {

  }

  // loop 2
  for (item in input) {

  }

  // ...
}
```