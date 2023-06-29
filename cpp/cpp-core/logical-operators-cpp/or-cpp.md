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

# OR (||) operator

---

## Content

The `||` operator returns true if at least one of the operands is true. If both are false, it returns false.

```cpp
bool a = true;
bool b = false;

if(a || b) {
  printf("Either a or b is true.")
} else {
  printf("Both a and b are false.")
}
// Output: "Either a or b is true."
```

---

## Practice

What is the output of the following code?

```cpp
bool a = true;
bool b = false;

if(a || b) {
  printf("Either a, b or both a and b are true.")
} else {
  printf("Both a and b are false.")
}
// Output: ???
```

- "Either a, b or both a and b are true."
- "Both a and b is false."

---

## Revision

What is the output of the following code?

```cpp
bool a = false;
bool b = false;

if(a || b) {
  printf("Either a, b or both a and b are true.")
} else {
  printf("Both a and b are false.")
}
// Output: ???
```

- "Both a and b is false."
- "Either a, b or both a and b are true."