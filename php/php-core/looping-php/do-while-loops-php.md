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

# do...while Loops

---

## Content

The `do...while` loop will execute the block of code once, and then repeat the loop as long as a specified condition is true.

```php
$i = 0;
do {
  echo $i;
  $i++;
} while ($i < 3);
// Output: 012
```

In the example, the loop will start at 0 `$i = 0`, continue as long as `$i` is less than 3 `$i < 3`, and `$i` will increase by 1 each time the loop runs `$i++`.



---
## Practice

Fill in the blanks to output the numbers 1 through 5:

```php
$i = 1;
do {
  echo $i;
  $i++;
} ??? ($i <= ???);
```

- while
- 5
- do
- for

---
## Revision


Fill in the blanks to output the numbers 5 through 10:

```php
$i = ???;
do {
  echo $i;
  $i++;
} ??? ($i <= ???);
```

- 5
- while
- 10
- do
- for
