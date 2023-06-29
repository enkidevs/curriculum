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

# for loops

---
## Content

In PHP, the `for` loop is used when you know in advance how many times the script should run. It consists of three parts: the initialization, the condition, and the increment/decrement.

Example:
```php
for($i = 0; $i < 5; $i++){
  echo $i;
}
// Output: 01234
```

In the example, the loop starts at 0 `$i = 0`, and continues as long as `$i` is less than 5 `$i < 5`, and `$i` will increase by 1 each time the loop runs `$i++`.


---
## Practice

Fill in the blank to output the numbers 1 through 5:

```php
for($i = 1; $i <= ???; $i++){
  echo $i;
}
```

- 5
- 4
- 3
- 6

---
## Revision

What is the output of the following code?

```php
for($i = 1; $i <= 3; $i++){
  echo $i;
}

// Output: ???
```

- 123
- 0123
- 012
- 23