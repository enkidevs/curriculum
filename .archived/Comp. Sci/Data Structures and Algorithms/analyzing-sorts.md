# Analyzing Sorts
author: mihaiberq

levels:

  - beginner
  - basic
  - medium
  - advanced

type: normal

category: how to

tags:
  - deep
  - workout

---
## Content


---
## Quiz

headline: which of the following functions is the fastest?

question: |
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

answers:
  - sort2, sort1, sort3
  - They are all just as fast
  - sort1, sort3, sort2
  - sort3, sort1, sort2
