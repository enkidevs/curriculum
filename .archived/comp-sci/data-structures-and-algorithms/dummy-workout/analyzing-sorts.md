---
author: mihaiberq

levels:
  - beginner
  - basic
  - medium
  - advanced

type: normal

category: how to

stub: true

tags:
  - deep
  - workout

aspects:
  - deep
  - workout

---
# Analyzing Sorts

---
## Content

All three functions run with the same complexity, O(n logn). That is because the sort function has an average complexity of O(n logn).

The other two for loops we use have complexity O(n). So it sums up to a O (n log n + 2n), but this approximates to O(n logn) in big-O notation. Yet there is a thin difference between the three of them. Keeping in mind that the initial is very long and we will choose only the numbers which are smaller than 0.5.

`sort2` is the quickest one because it first chooses all values which are smaller than 0.5. Afterwards it performs the sort and returns the square of each value. `sort1`  will be the second efficient one. It first performs the sort on the initial list. Then picks the values which are smaller than 0.5 and finally returns the square of each value.

`sort3` is the least efficient as it eliminates the values that are smaller than 0.5. Afterwards it sorts the bigger initial list and calculates all square values.

---
## Quiz 

### which of the following functions is the fastest?

// Given 3 sort functions, order them
// from the fastest to the slowest

initialArray = [];
for i = 0 to 10000 {
  // initialize the array with random numbers
  // between 0 and 1
  initialArray[i] = random(0, 1);
}

sort1: listIn {
  l1 = listIn.sort();
  list = (empty list);
  for i = 0 to l1.length() {
    if l1[i] < 0.5 {
      list.add(l1[i]);
    }
  }
  for i = 0 to list.length() {
    list[i] = list[i] * list[i];
  }
  return list;
}

sort2: initialArray {
  l1 = (empty list);
  for i = 0 to initialArray.length() {
    if ( initialArray[i] < 0.5 ) {
      l1.add(intialArray[i]);
    }
  }
  list = l1.sort();
  for i = 0 to list.length() {
    list[i] = list[i] * list[i];
  }
  return list;
}

sort3: initialArray {
  for i = 0 to intialArray.length() {
    initialArray[i] = initialArray[i] * initialArray[i];
  }
  l1 = intialArray.sort();
  list = (empty list);
  for i = 0 to l1.length() {
    if (l1[i] < 0.5) {
      list.add(l1[i]);
      }
    }
  return list;
}

* sort2, sort1, sort3
* sort1, sort3, sort2
* sort3, sort1, sort2
* They are all just as fast
