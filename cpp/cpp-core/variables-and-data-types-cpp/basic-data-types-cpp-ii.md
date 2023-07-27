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

# Basic Data Types (char, string)

---

## Content

`char` is used to represent a single character, such as 'a', 'Z', '2':

```cpp
char letter = 'a';
std::cout << letter;
// a
```

Unfortunately, `string` functionality is not included out of the box, so we first need to import its library:
```cpp
#include <string>;

std::string greeting = "Hello, world!";
std::cout << greeting;
// Hello, world!
```

---
## Practice

Complete the following code snippet by declaring a `string` variable named `name` and assigning it a value of `"Enki"`.

```csharp
??? name = "???";
```

- `std::string`
- `Enki`
- `enki`
- `char`

---
## Revision

Complete the following code snippet by declaring a `char` variable named `letter` and assigning it a value of `"A"`.

```csharp
??? ??? = "A";
```

- `char`
- `letter`
- `LETTER`
- `string`
