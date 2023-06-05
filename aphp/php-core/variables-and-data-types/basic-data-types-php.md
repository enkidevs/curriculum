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

# Basic Data Types in PHP

---

## Content

**PHP** has several basic data types, including:

### integer
---

Numbers, such as 1, 2, 3.
```php
$number = 10;
echo $number;
// 10
```

### float
---

Floating-point numbers (also refered to as **double**), are numbers that contain a decimal point.
```php
$number = 10.5;
echo $number;
// 10.5
```

### bool 

Boolean values, either `true` or `false`
```php
$true = true;
var_dump($true);
// true
```

### string

A sequence of characters, such as "hello", "Enki", ...

```php
$greeting = "Hello, world!";
echo $greeting;
// Hello, world!
```

### null
---

The absence of any value. It is case-insensitive and can be written as `NULL`, `Null` or `null`.

```php
$null = NULL;
var_dump($null);  
// NULL
```

---
## Practice

Which of the following is a basic data type in **PHP**?

???

- `integer`
- `array`
- `object`
- `resource`

---
## Revision

What is the basic data type for a sequence of characters in **PHP**?

???

- `string`
- `char`
- `int`
- `bool`
