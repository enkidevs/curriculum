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

# Comparison Operators

---

## Content

Comparison operators can be used to compare various types of data, including numbers, strings, and booleans. 

PHP's comparison operators are flexible and can handle different data types appropriately.

Here's a table of comparison operators you can use:

| Operator |             Name            |
|:--------:|:---------------------------:|
| ==       | is equal to                 |
| !=       | is not equal to             |
| <        | is less than                |
| <=       | is less than or equal to    |
| >        | is greater than             |
| >=       | is greater than or equal to |

```php
$num = 1;
if ($num == 1) { // true
  echo "num is $num";
}
// num is 1

if ($num >= 1) { // true
  echo "$num is greater than or equal to 1";
}
// 1 is greater than or equal to 1

if ($num < 5) { // true
  echo "$num is less than 5";
}
// 1 is less than 5

if ($num != 2) { // true
  echo "$num doesn't equal 2";
}
// 1 doesn't equal 2

// ...
```


---

## Practice

Finish the code to output "$num is greater than or equal to 3" if the condition evaluates to

```php
??? = 5;
if ($num ??? 3) {
  echo "$??? is greater than or equal to 3";
}
```

- $num
- >=
- num
- 5


---

## Revision

Finish the code to output "$num is greater than or equal to 3" 

```php
??? = 5;
if ($num ??? 3) {
  echo "$??? is greater than or equal to 3";
}
```

- $num
- >=
- num
- 5