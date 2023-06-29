---
author: tommarshall
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

# while Loops


---

## Content

The `while` loop continues to execute a block of code as long as a specified condition is `true`.

Example:
```php
$i = 0;
while($i < 5){
  echo $i;
  $i++;
}
// Output: 01234
```

In the example above, the loop will start at 0 `$i = 0`, continue as long as `$i` is less than 5 `$i < 5`, and `$i` will increase by 1 each time the loop runs `$i++`.


---
## Practice

Fill in the blank to output the numbers 1 to 10:

```php
$i = 1;
while($i <= ???){
  echo $i;
  $i++;
}
```

- 10
- 11
- 5
- 6

---
## Revision

What is the output of the following code?

```php
$i = 1;
while($i <= 3){
  echo $i;
  $i++;
}

// Output: ???
```

- 123
- 23
- 1234
- 0123
