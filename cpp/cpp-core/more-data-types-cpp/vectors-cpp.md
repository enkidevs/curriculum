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

# Vectors

---

## Content

Vectors are dynamic arrays, which can grow and shrink in size.

They also come with built-in functions that allow you to manipulate the data easily.

The vector is a template class in the Standard Template Library (STL). We have to include it before using it.

Here's how you can define a vector:
```cpp
#include <vector>

std::vector<int> numbers;
```

In the example, `numbers` is a vector that can hold integers.

You can add elements to the vector using the `push_back()` function:
```cpp
numbers.push_back(1);
numbers.push_back(5);
```

To access an element in the vector, use the index of that element (indexing starts at 0):

```cpp
printf("%d\n", numbers[0]);  
// Output: 1

printf("%d\n", numbers[1]); 
// Output: 5
```

---

## Practice

Given the `nums` array, use the built-in method to add the number 7 to it:
```cpp
#include <vector>

std::vector<int> nums;

???.???(7);
```

- nums
- push_back
- numbers
- push
