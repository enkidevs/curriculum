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

# while Loops


---

## Content

A `while` loop continues executing the code block as long as the condition is true. 

Here's a `while` loop example that prints the numbers from 1 to 5:
```cpp
#include <stdio.h>

int main() {
  int i = 1;
  while(i <= 5) {
    printf("%d\n", i);
    i++;
  }
  return 0;
}
// Output: 
// 1
// 2
// 3
// 4
// 5
```

In the example above, the condition `i <= 5` is checked before each iteration. If it's true, the loop continues; otherwise, it stops. 

**Note** that the increment operation `i++` is inside the loop.


---
## Practice

Fill in the blank to output the numbers 1 to 5:

```cpp
#include <stdio.h>

int main() {
  int i = 1;
  ???(i <= ???) {
    printf("%d\n", i);
    i++;
  }
  return 0;
}
// Output: 
// 1
// 2
// 3
// 4
// 5
```

- while
- 5
- for
- 6

---
## Revision

What is the output of the following code?

```cpp
#include <stdio.h>

int main() {
  int i = 10;
  while(i >= 1) {
    printf("%d\n", i);
    i--;
  }
  return 0;
}
// Output: ???
```

- 10 9 8 7 6 5 4 3 2 1
- 1 2 3 4 5 6 7 8 9 10
- 10 9 8 7 6
- 1 2 3 4 5
