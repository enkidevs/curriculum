---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: must-know

---

# Array Functions

---

## Content

**PHP** provides a large number of built-in functions for manipulating arrays:

- `count()`: returns the number of elements in an array.
- `sort()`: sorts the elements of an array in ascending order.
- `rsort()`: sorts the elements of an array in descending order.
- `array_push()`: pushes one or more elements onto the end of an array.
- `array_pop()`: pops and returns the last value of the array, shortening the array by one element.


```php
$numbers = array(2, 3, 1);

echo "Count: " . count($numbers) . "\n";
// Output: Count: 3

sort($numbers);
echo "Sorted: " . implode(", ", $numbers) . "\n";
// Output: Sorted: 1, 2, 3

rsort($numbers);
echo "Reversed: " . implode(", ", $numbers) . "\n";
// Output: Reversed: 3, 2, 1

// Add more elements
array_push($numbers, 4, 5, 6);

// Remove the last element of the array
$lastElement = array_pop($numbers);
```

