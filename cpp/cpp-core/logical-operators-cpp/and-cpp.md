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

# AND (&&) Operator

---

## Content

The `&&` operator returns true if both operands are true. Otherwise, it returns false:

```cpp
bool a = true;
bool b = false;

if(a && b) {
  std::cout << "Both a and b are true.";
} else {
  std::cout << "Either a or b is false.";
}
// Output: "Either a or b is false."
```

---

## Practice

In the following code snippet, what does `result` evaluate to?

```cpp
bool a = true;
bool b = false;

bool result = a && b;
```
???

- false
- true


---

## Revision

Fill in the code to make the `result` variable evaluate to true:
```cpp
bool a = true;
bool b = ???;

bool result = a && b;
```

- true
- false
