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

# OR (||, or) operator

---

## Content

The `or` and `||` operators in PHP return true if at least one of the operands is true. If both operands are false, they return false.

Here are some examples:
```php
$a = true;
$b = false;

if($a || $b) {
  echo "At least one of a or b is true.";
} else {
  echo "Both a and b are false.";
}
// Output: "At least one of a or b is true."
```

```php
$a = true;
$b = false;

if($a or $b) {
  echo "At least one of a or b is true.";
} else {
  echo "Both a and b are false.";
}
// Output: "At least one of a or b is true."
```

Just like the `and` and `&&` operators, `or` and `||` have different precedence. The `||` operator has a higher precedence than `or`.

---

## Practice

What is the output of the following code?

```cpp
$a = false;
$b = false;

if($a || $b) {
  echo "At least one of a or b is true.";
} else {
  echo "Both a and b are false.";
}
// Output: ???

```

- "Either a, b or both a and b are true."
- "Both a and b is false."

---

## Revision

What is the output of the following code?

```cpp
$a = true;
$b = false;

if($a || $b) {
  echo "At least one of a or b is true.";
} else {
  echo "Both a and b are false.";
}
// Output: ???
```

- "Both a and b is false."
- "Either a, b or both a and b are true."