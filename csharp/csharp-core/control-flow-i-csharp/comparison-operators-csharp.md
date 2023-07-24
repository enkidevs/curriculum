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

**C++**'s comparison operators are flexible and can handle different data types appropriately.

Here's a table of comparison operators you can use:

| Operator |             Name            |
|:--------:|:---------------------------:|
| ==       | is equal to                 |
| !=       | is not equal to             |
| <        | is less than                |
| <=       | is less than or equal to    |
| >        | is greater than             |
| >=       | is greater than or equal to |

```cpp
int num = 1;

if (num == 1) { // true
  Console.WriteLine("num is equal to " + num);
}
// Output: num is equal to 1

if (num >= 1) { // true
  Console.WriteLine("num is greater than or equal to " + num);
}
// Output: num is greater than or equal to 1

if (num < 5) { // true
  Console.WriteLine("num is less than " + num);
}
// Output: num is less than 5

if (num != 2) { // true
  Console.WriteLine("num doesn't equal " + num);
}
// Output: num doesn't equal 2

// ...
```


---

## Practice

Finish the code to output "num is greater than or equal to 3" if the condition evaluates to `true`.

```php
int num = 3;
if (??? ??? 3) { // true
  Console.WriteLine("num is greater than or equal to " + num);
}
// num is greater than or equal to 3
```

- num
- >=
- <=
- 1


---

## Revision

Finish the code to to make the comment true:

```php
int ??? = 3;
if (num ??? 2) {
  Console.WriteLine("num doesn't equal " + num);
}
// Output: num doesn't equal 2

```

- num
- !=
- ==
- number