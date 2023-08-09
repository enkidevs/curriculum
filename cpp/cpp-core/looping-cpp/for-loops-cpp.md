---
author: Stefan-Stojanovic
type: normal
category: must-know
---

# for loops

---
## Content

A `for` loop is used when we know beforehand how many times we want to execute a block of code.

Here's a basic `for` loop that prints the numbers from 1 through 10:
```cpp
#include <stdio.h>

int main() {
  for(int i = 1; i <= 10; i++) {
    printf(i);
  }
  return 0;
}
// Output: 
// 12345678910
```
