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

# Printing

---

## Content

In C++, we can also use the `printf()` function from the C Standard Library to print[1] messages to the console. This  allows us to format strings in a way similar to placeholders:

```cpp
#include <cstdio>

int main() {
  printf("Hello, world!");
  return 0;
}
```

To print a message and move on to a new line:
```cpp
printf("Hello, world!\n");
printf("Hello, world!\n");

// Hello, world!
// Hello, world!
```

If you do not want to move onto a new line, you can remove the `\n`:
```cpp
printf("Hello, world!");
printf("Hello, world!");

// Hello, world!Hello, world!
```

To output a value from a variable:
```cpp
int age = 30;
printf("Stefan is %d years old.", age);

// Stefan is 30 years old.
```


---
## Practice

Print a message to the console and add a newline character after the message:
```cpp
???("Hello, world!???")
```

- `printf`
- `\n`
- `stdout`
- `\nextLine`

---
## Revision

Print a message to the console and add a newline character after the message:
```cpp
???("Hello, world!???")
```

- `printf`
- `\n`
- `stdout`
- `\nextLine`


---
## Footnotes

[1: Printing]
Printing messages in **C++** is useful for debugging and for communicating information to the user.
