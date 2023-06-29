---
author: Stefan-Stojanovic
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

# for loops

---
## Content

A `for` loop is used when we know beforehand how many times we want to execute a block of code.

Here's a basic `for` loop that prints the numbers from 1 through 10:
```cpp
#include <iostream>

int main() {
  for(int i = 1; i <= 10; i++) {
    printf(i);
  }
  return 0;
}
// Output: 
// 12345678910
```

You can also do it in descending order:
```cpp
```cpp
#include <iostream>

int main() {
  for(int i = 10; i >= 1; i--) {
    printf(i);
  }
  return 0;
}
// Output: 
// 10987654321
```

---
## Practice

Fill in the blank to output the numbers 1 through 5:

```cpp
#include <iostream>

int main() {
  for(int i = 1; i <= ???; i++) {
    printf(i);
  }
  return 0;
}
// Output: 
// 12345
```

- 5
- 4
- 3
- 6

---
## Revision

What is the output of the following code?

```cpp
#include <iostream>

int main() {
  for(int i = 10; i >= 1; i--) {
    printf(i);
  }
  return 0;
}
// Output: ???
```

- 10987654321
- 12345678910
- 12346
- 246810