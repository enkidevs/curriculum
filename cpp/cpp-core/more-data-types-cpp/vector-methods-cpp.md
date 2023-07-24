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

# Vector Methods

---

## Content

Vectors come with several built-in methods. Here are some of them:

- `push_back()`: adds an element to the end of the vector
- `pop_back()`: removes the last element from the vector
- `size()`: returns the number of elements in the vector
- `empty()`: returns true if the vector is empty, false otherwise
- `clear()`: removes all elements from the vector


Here are some examples:
```cpp
#include <vector>
#include <cstdio>

int main() {
  std::vector<int> numbers;

  numbers.push_back(1);
  printf("Size: %d\n", numbers.size());  
  // Output: Size: 1

  numbers.pop_back();
  printf("Size: %d\n", numbers.size());
  // Output: Size: 0

  if (numbers.empty()) {
    printf("true\n");
  } else {
    printf("false\n");
  }
  // Output: true
}
```


---

## Practice

Remove the last element of the `nums` vector and then confirm its size:
```cpp
#include <vector>
#include <cstdio>

int main() {
  std::vector<int> nums;

  ???.???;
  printf("Size: %d\n", nums.???);  
  // Output: Size: 0
}
```

- nums
- pop_back()
- size()
- getSize()
- pop()
- numbers

---
## Revision

Add an element at the end of the `nums` vector and then confirm its not empty:
```cpp
#include <vector>
#include <cstdio>

int main() {
  std::vector<int> nums;

  ???.???(1);
  printf("Size: %d\n", nums.size());  
  // Output: Size: 1

  if (numbers.???) {
    printf("true\n");
  } else {
    printf("false\n");
  }
  // Output: true
}
```

- nums
- push_back
- empty()
- getSize()
- pop()
- numbers
