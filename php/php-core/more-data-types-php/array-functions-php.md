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

Some of the most important array functions in *PHP* are:

- `count()`: returns the number of elements in an array.
- `array_push()`: pushes one or more elements onto the end of an array.
- `array_pop()`: pops and returns the last value of the array, shortening the array by one element.

```php
$numbers = array(2, 3, 1);

echo "Count: " . count($numbers) . "\n";
// Output: Count: 3

// Add more elements
array_push($numbers, 4, 5, 6);

// Remove the last element of the array
$lastElement = array_pop($numbers);
```

