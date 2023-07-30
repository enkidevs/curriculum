---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: must-know
---

# Vector Methods

---

## Content

Vectors come with several built-in methods!

For example, `size()` returns the number of elements in the vector:

```cpp
#include <vector>
#include <cstdio>

int main() {
  std::vector<int> numbers;


  printf("Size: %d\n", numbers.size());
  // Output: Size: 0


  numbers.push_back(1);
  printf("Size: %d\n", numbers.size());  
  // Output: Size: 1
}
```
