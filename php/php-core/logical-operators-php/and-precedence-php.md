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
links:
  - >-
    [PHP documentation](https://www.php.net/manual/en/language.operators.precedence.php){documentation}

---

# (and, &&) Precedence

---

## Content


In PHP, `&&` takes precedence over `and`. When mixed, this order matters.

Let's look at an example:

```php
$a = true;
$b = false;
$c = true;

if($a and $b && $c) {
    // Interpreted as: ($a and $b) && $c
    echo "Won't print.";
} else {
    echo "Will print.";
}

if($a && $b and $c) {
    // Interpreted as: $a && ($b and $c)
    echo "Won't print.";
} else {
    echo "Will print.";
}
```
For clarity, use one operator type or add parentheses.

---

## Practice

Complete the following code so that the output is "Both a and b are true.":

```cpp
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

```cpp
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