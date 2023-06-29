---
author: tommarshall
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

A `do-while` loop is similar to a `while` loop, but with a crucial difference:

The code block is executed at least once, regardless of the condition. 

Only after the code block is executed, the condition is checked. If it's true, the loop continues; otherwise, it stops. 

Here's an example of a `do-while` loop that prints the numbers from 1 to 5:

```cpp
#include <stdio.h>

int main() {
  int i = 1;
  do {
    printf("%d\n", i);
    i++;
  } while(i <= 5);
  
  return 0;
}
// Output: 
// 1
// 2
// 3
// 4
// 5
```

In the example, the loop will start at 0 `$i = 0`, continue as long as `$i` is less than 3 `$i < 3`, and `$i` will increase by 1 each time the loop runs `$i++`.



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