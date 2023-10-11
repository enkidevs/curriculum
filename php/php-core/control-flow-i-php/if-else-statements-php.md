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

```php
$num = 1;
if ($num == 0) { // false
  echo "num equals 0";
} else { // will execute if condition is false
  echo "num doesn't equal 0";
}

// num doesn't equal 0
```

---

## Practice

What does the following code snippet print?

```php
$x = 4;
if ($x <= 3) {
  echo 'x is smaller';
} else {
  echo 'x is larger';
}
```

???

- x is larger
- x is smaller

---

## Revision

What does the following code snippet print?

```php
$x = 13;
if ($x == 13) {
  echo 'true';
} else {
  echo 'false';
}
```

- true
- false
