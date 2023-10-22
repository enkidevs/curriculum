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

# Arrays

---

## Content

An array is a special variable that can hold multiple values at a time.

Here's how you define an array that holds 5 integers in PHP:
```php
$numbers = array(1, 2, 3, 4, 5);
```

To access an element in the array, use the index of that element (keep in mind that indexing starts at 0):

```php
echo $numbers[0];  
// Output: 1
```

Arrays in PHP can also be associative, where you can assign keys to the values:
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



---

## Practice

Fill in the code to create an array of integers called `nums` that hold numbers from 1 through 5:

```php
??? = ???(1, 2, 3, 4, 5);
```


- $nums
- array
- $arr
- nums

---

## Revision

Fill in the code to output the number 7 from the `numbers` array using its index:
```php
$numbers = array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
echo $numbers[???];  
// Output: 7
```

- 6
- 7
- 0
- 1