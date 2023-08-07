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

`pop_back()` removes the last element from the vector:

```cpp
std::vector<int> numbers;

numbers.push_back(1);
printf("Size: %d\n", numbers.size());  
// Output: Size: 1

numbers.pop_back();
printf("Size: %d\n", numbers.size());
// Output: Size: 0
```


