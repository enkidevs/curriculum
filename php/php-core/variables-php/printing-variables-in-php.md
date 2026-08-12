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

# Printing

---

## Content

If you want to print[1] a message and move to a new line, you can use the newline character `\n`. 

**Note** that the newline character only works in double-quoted strings:
```php
echo "Hello, world!\n";
```

To print the type of variable, we can use `var_dumb`:
```php
$name = "Stefan";
var_dump($name);
// string(6) "Stefan"
```


---
## Practice

Print a message to the console without adding a newline character after the message:
```php
??? "Hello, world!"
```

- `echo`
- `output`

---

## Revision

Print a message to the console and move to a new line:
```php
echo ???
```

- `"Hello, world!\n"`
- `'Hello, world!\n'`

---
## Footnotes

[1: Printing]
Printing messages in **PHP** is useful for debugging and for communicating information to the user.
