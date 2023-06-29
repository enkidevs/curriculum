---
author: Stefan-Stojanovic
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

# Assignment Operators in PHP

---

## Content

In **PHP**, assignment operators are used to assign values to variables.

The most common assignment operator is the `=` operator, which is used to assign a value to a variable:
```php
$x = 7;
$y = 13;

echo $x;  
// Outputs: 7
echo $y;  
// Outputs: 13
```

**PHP** also includes compound assignment operators such as `+=`, `-=`, `*=`, and `/=`. These operators modify the value of the variable:
```php
// equivalent to $x = $x + 5
$x += 5;
echo $x;
// Outputs: 12

// equivalent to $y = $y * 2
$y *= 2;
echo $y;
// Outputs: 26
```

---
## Practice

Which operator is used to assign a value to a variable in **PHP**?

- `=`
- `==`
- `->`
- `>`

---
## Revision

Which of these variables uses the recommended way of assigning values in **PHP**?

```plain-text
x = 2;
$y = 10;
```

???

- y
- x
