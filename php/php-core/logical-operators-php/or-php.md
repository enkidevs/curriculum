---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: must-know
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
}
// Output: "At least one of a or b is true."
if($a or $b) {
  echo "At least one of a or b is true.";
}
// Output: "At least one of a or b is true."
```

Just like the `and` and `&&` operators, `or` and `||` have different precedence. The `||` operator has a higher precedence than `or`.

---
