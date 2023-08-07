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

# Advanced Printing

---

## Content

If you want to print[1] a message and move to a new line, you can use `std::endl` or `\n`:
```cpp
std::cout << "Hello, world!" << std::endl;
std::cout << "Hello, worlds!\n";
// Hello, world!
// Hello, worlds!
```

You can also output a value from a variable:
```cpp
int age = 30;
std::cout << age;
// 30
```


---
## Practice

Print a message to the console without adding a newline character after the message:
```cpp
??? << "Hello, world!";
```

- `std::cout`
- `output`
- `print`

---
## Revision

Print a message to the console with a newline character after the message:
```cpp
std::cout << ???;
```

- `"Hello, worlds!\n"`
- `"Hello, worlds!"`

---
## Footnotes

[1: Printing]
Printing messages in **C++** is useful for debugging and communicating information to the user.
