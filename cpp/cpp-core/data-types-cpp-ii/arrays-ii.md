---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Arrays

---

## Content

To access an element in the array, use the index of that element (keep in mind that indexing starts at 0):
```cpp
int numbers[5] = {1, 2, 3, 4, 5};
printf("%d\n", numbers[0]);
// Output: 1
```

We can similarly change the array's value at a particular index:
```cpp
int numbers[3] = {11, 22, 33};
numbers[1] = 60;
printf("%d\n", numbers[1]);
// Output: 60
```
---

## Practice

Fill in the code to create an integer array called `nums` that holds numbers from 1 through 5:

```cpp
??? ???[5] = {1, 2, 3, 4, 5};
```


- int
- nums
- integers
- numbers

---

## Revision

Fill in the code to output the number 5 from the `numbers` array using its index:
```cpp
int numbers[5] = {1, 2, 3, 4, 5};
printf("%d\n", numbers[???]);

// Output: 5
```

- 4
- 5
- 3
- 0