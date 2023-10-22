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

# AND (and, &&) Operators

---

## Content

The `and` and `&&` operators in **PHP** return true only if both operands are true. Otherwise, they return false.

Here are some examples:

```php
$a = true;
$b = true;

if($a && $b) {
  echo "Both a and b are true.";
}
// Output: "Both a and b are true."
if($a and $b) {
  echo "Both a and b are true.";
}
// Output: "Both a and b are true."
```

Note that there is a difference in precedence between `and` and `&&`. We will look at an example in the next insight.

---

## Practice

Complete the following code so that the output is "Both a and b are true.":

```php
$a = ???;
$b = true;

if($a ??? $b) {
  echo ???;
} else {
  echo "Either a or b is false.";
}
// Output: "Both a and b are true."
```

- true
- &&
- "Both a and b are true."

---

## Revision

What is the output of the following code?

```php
$a = false;
$b = true;

if($a && $b) {
  echo "Both a and b are true.";
} else {
  echo "Either a or b is false.";
}
// Output: ???
```

- "Either a or b is false."
- "Both a and b are true."