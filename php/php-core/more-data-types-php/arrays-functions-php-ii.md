---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: must-know

---

# Array Sorting

---

## Content

**PHP** also includes built-in functions for sorting arrays:

- `sort()`: sorts the elements of an array in ascending order.
- `rsort()`: sorts the elements of an array in descending order.

```php
$numbers = array(2, 3, 1);

sort($numbers);
echo "Sorted: " . implode(", ", $numbers) . "\n";
// Output: Sorted: 1, 2, 3

rsort($numbers);
echo "Reversed: " . implode(", ", $numbers) . "\n";
// Output: Reversed: 3, 2, 1
```

