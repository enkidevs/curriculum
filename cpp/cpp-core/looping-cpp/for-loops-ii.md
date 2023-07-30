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


You can also run `for` loops in descending order:

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