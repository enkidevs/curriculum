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

In C++, we use the `std::cout` along with the insertion operator `<<` to print[1] messages to the console:
```cpp
#include <iostream>

int main() {
    std::cout << "Hello, world!";
    return 0;
}
```

If you want to print a message and move to a new line, you can use `std::endl` or `\n`:
```cpp
std::cout << "Hello, world!" << std::endl;
std::cout << "Hello, worlds!\n";
```

Both will output the string and move to a new line.
```cpp
// Hello, world!
// Hello, worlds!
```

On the other hand, if we do not want to print on multiple lines:
```cpp
std::cout << "Hello, world!"
std::cout << "Hello, worlds!"

// Hello, world!Hello, worlds!
```

You can also output a value from a variable:
```cpp
std::string name = "Stefan";
int age = 30;

std::cout << name << " is " << age << " years old.";

// Stefan is 30 years old.
```


---
## Practice

Print a message to the console without adding a newline character after the message:
```cpp
??? << "Hello, world!"
```

- `std::cout`
- `output`

---
## Revision

Print a message to the console with a newline character after the message:
```cpp
std::cout << "Hello, worlds!\n";
```

- `"Hello, worlds!\n"`
- `"Hello, worlds!"`

---
## Footnotes

[1: Printing]
Printing messages in **C++** is useful for debugging and for communicating information to the user.
