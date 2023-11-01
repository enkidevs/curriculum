---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: must-know
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