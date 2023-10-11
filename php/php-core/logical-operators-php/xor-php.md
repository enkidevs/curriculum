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

# XOR Operator

---

## Content

In PHP, the `xor` operator is a logical operator that returns true if exactly one of the two operands (conditions) is true, otherwise it returns false.

Here is an example:
```php
$a = true;
$b = false;

if($a xor $b) {
  echo "Exactly one of a or b is true.";
} else {
  echo "Both a and b are either true or false.";
}
// Output: "Exactly one of a or b is true."
```

---

## Practice

What is the output of the following code?

```cpp
$a = true;
$b = true;

if($a xor $b) {
  echo "Exactly one of a or b is true";
} else {
  echo "Both a and b are either true or false";
}
// Output: ???
```

- Exactly one of a or b is true
- Both a and b are either true or false

---

## Revision

What is the output of the following code?

```cpp
$a = false;
$b = false;

if($a xor $b) {
  echo "Exactly one of a or b is true";
} else {
  echo "Both a and b are either true or false";
}
// Output: ???
```

- Exactly one of a or b is true
- Both a and b are either true or false