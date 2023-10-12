---
author: Stefan-Stojanovic
type: normal
category: must-know
---

# foreach Loop

---

## Content

A `foreach` loop is used to iterate over arrays.

Here's an example:
```php
$array = array(1, 2, 3, 4, 5);

foreach ($array as $value) {
  echo $value;
}
// Output: 12345
```

In this case, the `foreach` loop is iterating over each value in the `$array`. For each iteration, `$value` is assigned the current item's value, and the code inside the loop is executed.
