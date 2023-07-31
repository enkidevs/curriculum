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

# If else Statements

---

## Content

We can extend the `if` statement to include an `else` clause, which will be executed if the condition is not met.

```cpp
int num = -6;
if (num >= 0) {
  cout << "Positive or Zero Number";
} else {
  cout << "Negative Number";
}

// Positive Number
```

---

## Practice

What does the following code snippet print?

```cpp
int num = 3;
if (num == 0) {
  cout << "num is zero";
} else {
  cout << "num is not zero";
}
```

???

- num is not zero
- num is zero

---

## Revision

What does the following code snippet print?

```cpp
int num = 3;
if (num < 0) {
  cout << "num is negative";
} else {
  cout << "num is positive";
}
```
???

- num is positive
- num is negative
