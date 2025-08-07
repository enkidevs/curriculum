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

# If Statements

---

## Content

The flow of a PHP program depends on the order in which individual commands are executed. Control flow statements like if...else allow us to manage the order using conditions.

```php
if (condition) {
  // execute this code
}
```

The script will only execute the code if the condition has been met.

```php
$num = 5;
if ($num > 0) {
  echo "$num is a positive number";
}
// Output: 5 is a positive number
```

If the condition `$num > 0` evaluates to `false`, this code would not output anything.

---
## Practice

What does the following code snippet print?

```php
$num = 5;
if ($num > 0) {
  echo "$num is a positive number";
}
```

???

- 5 is a positive number
- nothing

---

## Revision

What does the following code snippet print?

```php
$num = 0;
if ($num > 0) {
  echo "num is 0";
}
```

- nothing
- num is 0
