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

# do-while Loops:

---

## Content

Here's an example of a `do-while` loop that prints the numbers from 1 to 5:

```cpp
int i = 1;
do {
   printf(i);
   i++;
} while(i <= 5);
  
// Output: 12345
```

In the example, the loop will start at 0 `i = 0`, continue as long as `i` is less than 5 `i < 5`, and `i` will increase by 1 each time the loop runs `i++`.



---
## Practice

Fill in the blanks to output the numbers 1 through 5:

```cpp
#include <stdio.h>

int main() {
  int i = 1;
  ??? {
    printf("%d\n", i);
    i++;
  } ???(i <= ???);
  
  return 0;
}
// Output: 
// 1
// 2
// 3
// 4
// 5
```

- do
- while
- 5
- for
- 1

---
## Revision

Fill in the blanks to output the numbers 5 through 1:

```cpp
#include <stdio.h>

int main() {
  int i = 5;
  ??? {
    printf("%d\n", i);
    i--;
  } ???(i => ???);
  
  return 0;
}
// Output: 
// 1
// 2
// 3
// 4
// 5
```

- do
- while
- 1
- for
- 5