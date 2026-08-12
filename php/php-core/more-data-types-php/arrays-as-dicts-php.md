---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: must-know
---

# Arrays as Dictionaries

---

## Content


Arrays in PHP can also be used as dicitonaries, where you can assign keys to the values:
```php
$numbers = array(
  'one' => 1,
  'two' => 2,
  'three' => 3,
  'four' => 4,
  'five' => 5
);
```

For outputting the contents of the whole array, we can use the `print_r()` function:
```php
print_r($numbers);
```

Which gives us this output:
```php
Array
(
  [one] => 1
  [two] => 2
  [three] => 3
  [four] => 4
  [five] => 5
)
```


