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
links:
  - >-
    [PHP documentation](https://www.php.net/manual/en/language.operators.precedence.php){documentation}

---

# (and, &&) Precedence

---

## Content

The `and` and `&&` operators differ in their precedence. The `&&` operator has a higher precedence.

Note: This only applies if both are used at the same time. The presedence doesn't matter when only one of them is used.

Let's look at an example:

```cpp
$a = true;
$b = false;
$c = true;

if($a and $b && $c) {
  echo "This will not print.";
} else {
  echo "This will print.";
}
// Output: "This will print."

if($a && $b and $c) {
  echo "This will not print.";
} else {
  echo "This will print.";
}
// Output: "This will not print."
```

In the first `if` statement, `$a` and `$b` && `$c` is evaluated like `($a and $b) && $c` due to `&&` having higher precedence.

So it first evaluates `$a` and `$b` which results in false (since `$b` is false), and then false && `$c` is also false.

In the second `if` statement, `$a` && `$b` and `$c` is evaluated like `$a && ($b and $c)`.

So it first evaluates `$b` and `$c` which results in false (since `$b` is false), and then `$a` && false is also false.

So be careful when mixing `and` and `&&` in the same expression because `&&` has a higher precedence and will be evaluated first. 

To avoid confusion, stick with one type of operator, or use parentheses to make the precedence explicit.

---

## Practice

Complete the following code so that the output is "Both a and b are true.":

```cpp
$a = ???;
$b = true;

if($a ??? $b) {
  echo ???;
} else {
  echo "Either a or b is false.";
}
// Output: "Both a and b are true."
```

- true
- &&
- "Both a and b are true."

---

## Revision

What is the output of the following code?

```cpp
$a = false;
$b = true;

if($a && $b) {
  echo "Both a and b are true.";
} else {
  echo "Either a or b is false.";
}
// Output: ???
```

- "Either a or b is false."
- "Both a and b are true."